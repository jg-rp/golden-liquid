require "json"
require "minitest/autorun"
require "liquid"

MemoryFileSystem = Struct.new(:templates) do
  def read_template_file(path)
    templates.fetch(path)
  end
end

file_system = MemoryFileSystem.new({})

test_env = Liquid::Environment.build do |env|
  env.file_system = file_system
end

golden = JSON.parse(File.read("golden_liquid.json"))

describe "Golden" do
  golden["tests"].each do |t|
    it t["name"] do
      file_system.templates = t["templates"]
      mode = t["tags"].is_a?(Array) && t["tags"].include?("strict") ? :strict : :lax
      if t["invalid"]
        assert_raises Liquid::Error do
          Liquid::Template.parse(
            t["template"],
            environment: test_env,
            error_mode: mode,
            line_numbers: true
          ).render!(context = t["data"])
        end
      else
        template = Liquid::Template.parse(
          t["template"],
          environment: test_env,
          error_mode: mode,
          line_numbers: true)

        _(template.render(context = t["data"])).must_equal t["result"]
      end
    end
  end
end
