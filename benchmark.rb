# frozen_string_literal: true

require "benchmark/ips"
require "json"
require "liquid"
require "optparse"
require "pathname"

MemoryFileSystem = Struct.new(:templates) do
  def read_template_file(path)
    templates.fetch(path)
  end
end

# A benchmark fixture
class Fixture
  attr_reader :templates, :data, :name

  # @param path [Pathname]
  def initialize(path)
    @root = path
    @name = @root.basename.to_s
    @data = JSON.parse((@root + "data.json").read)
    @templates = (@root + "templates").glob("*liquid").to_h do |p|
      [p.basename.to_s, p.read]
    end
  end

  def env
    Liquid::Environment.build do |env|
      env.file_system = MemoryFileSystem.new(@templates)
    end
  end
end

options = {
  fixture: "002"
}

OptionParser.new do |parser|
  parser.banner = <<~BANNER
    Run one of the benchmarks in ./benchmark_fixtures.
    Example: ruby benchmark.rb -f 002
  BANNER

  parser.on("-f FIXTURE", "--fixture FIXTURE",
            "The name of the benchmark fixture to run. Defaults to '002'.") do |value|
    options[:fixture] = value
  end

  parser.parse!
end

fixture = Fixture.new(Pathname.new("benchmark_fixtures") + options[:fixture])
env = fixture.env
source = fixture.templates["index.liquid"]
template = Liquid::Template.parse(source, environment: env, line_numbers: true)

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(warmup: 2, time: 5)

  x.report("parse (#{fixture.name}):") do
    Liquid::Template.parse(source, environment: env, line_numbers: true)
  end

  x.report("render (#{fixture.name}):") do
    template.render!
  end

  x.report("both (#{fixture.name}):") do
    Liquid::Template.parse(source, environment: env, line_numbers: true).render
  end
end
