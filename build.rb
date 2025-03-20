# frozen_string_literal: true

require "optparse"
require "pathname"
require "json_schemer"

GOLDEN_SCHEMA = JSON.load_file("golden_liquid.schema.json")
unless JSONSchemer.valid_schema?(GOLDEN_SCHEMA)
  raise StandardError "schema is not valid"
end

SCHEMER = JSONSchemer.schema(GOLDEN_SCHEMA)
ROOT = "tests/"

# Build the golden Liquid test suite and write it to stdout.
# @param tags [Array<String>] A list of tags used to filter test cases.
# @param require_all_tags [bool] If true, require all _tags_ to be present for a test.
# @param exclude_tags [bool] If true, exclude tests matching _tags_ instead of
#   including them
# @return [Hash] The validated test suite.
def build(tags, require_all_tags, exclude_tags)
  warn "Building test suite from ./tests"
  warn "Filtering by tags (#{tags.length}): #{tags.inspect}"
  warn "Require all tags: #{require_all_tags}"
  warn "Exclude tags: #{exclude_tags}"

  # Sort files, with files before folders
  files = Dir["#{ROOT}**/*.json"].sort_by { |path| [path.count("/"), path] }
  test_cases = files.flat_map { |path| load_tests(Pathname.new(path)) }

  # Filter test cases according to tags.
  unless tags.empty?
    tag_filter = if require_all_tags
                   ->(tags_) { tags.all? { |tag| tags_.include?(tag) } }
                 else
                   ->(tags_) { tags.any? { |tag| tags_.include?(tag) } }
                 end

    test_cases.filter! { |t| tag_filter.call(t.fetch("tags", [])) != exclude_tags }
  end

  test_suite = {
    "description" => "Golden Liquid test suite",
    "tests" => test_cases
  }

  validate_schema(test_suite)
  test_suite
end

# Read, transform and validate tests cases in _path_.
# @param path [Pathname] The path to a file containing JSON formatted test cases.
# @return [Array<Hash>] The transformed and validated test cases.
def load_tests(path)
  rel_path = path.relative_path_from(ROOT)
  parts = rel_path.sub_ext("").each_filename.to_a.map do |filename|
    filename.gsub("_", " ")
  end
  prefix = parts.join(", ")

  # warn("Processing #{rel_path} with prefix #{prefix.inspect}")

  data = JSON.parse(path.read)
  validate_schema(data)
  check_for_dupes(data)

  data["tests"].each { |t| t["name"] = "#{prefix}, #{t["name"]}" }
  data["tests"]
end

# Raise an error if _data_ is not valid according to our schema.
def validate_schema(data)
  errors = SCHEMER.validate(data).to_a
  return if errors.empty?

  raise StandardError errors.first["error"]
end

# Raise an error if _data_ contains duplicate test names.
def check_for_dupes(data)
  counter = Hash.new(0)
  data["tests"].each { |t| counter[t["name"]] += 1 }
  dupes = counter.filter { |_, v| v > 1 }
  return if dupes.empty?

  buf = []
  dupes.each do |name, count|
    plural = count == 1 ? "s" : ""
    buf << "#{name.inspect} appears #{count} time#{plural} in #{rel_path}"
  end
  raise StandardError buf.join($INPUT_RECORD_SEPARATOR)
end

def dump_tags
  tests = Dir["#{ROOT}**/*.json"].flat_map { |f| JSON.parse(File.read(f))["tests"] }
  tags = tests.flat_map { |t| t.fetch("tags", []) }.to_set.sort
  tags.each do |tag|
    puts tag
  end
end

def cli
  options = {
    tags: [],
    require_all: false,
    exclude: false,
    list_tags: false
  }

  OptionParser.new do |parser|
    parser.banner = <<~BANNER
      Build the Golden Liquid test suite and write it to stdout.
      Usage: build.rb [options]
    BANNER

    parser.on("-t TAG", "--tag TAG",
              "Select tests by tag. Can be used multiple times.") do |value|
      options[:tags] << value
    end

    parser.on("-a", "--require-all",
              "Require all tags provided by -t or --tag to be present.") do |value|
      options[:require_all] = value
    end

    parser.on("-e", "--exclude",
              "Exclude tests with tags provided by -t or --tag.") do |value|
      options[:exclude] = value
    end

    parser.on("--list-tags",
              "Print a list of known tags to stdout") do |value|
      options[:list_tags] = value
    end

    parser.parse!
  end

  if options[:list_tags]
    dump_tags
  else
    test_suite = build(options[:tags],
                       options[:require_all],
                       options[:exclude])

    puts JSON.pretty_generate(test_suite)

    all_tags = test_suite["tests"].flat_map { |t| t.fetch("tags", []) }.to_set.sort
    warn "Wrote #{test_suite["tests"].length} to stdout."
    warn "Tags (#{all_tags.length}): #{all_tags.join(", ")}"
  end
end

cli if __FILE__ == $PROGRAM_NAME
