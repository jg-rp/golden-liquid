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

golden = JSON.parse(File.read("../golden_liquid.json"))

describe "Golden" do
  golden["test_groups"].each do |group|
    describe group["name"] do
      group["tests"].each do |t|
        it t["name"] do
          file_system.templates = t["partials"]
          mode = t["strict"] ? :strict : :lax
          if t["error"]
            assert_raises Liquid::Error do
              Liquid::Template.parse(
                t["template"],
                environment: test_env,
                error_mode: mode,
                line_numbers: true
              ).render!(context = t["context"])
            end
          else
            template = Liquid::Template.parse(
              t["template"],
              environment: test_env,
              error_mode: mode,
              line_numbers: true)

            _(template.render(context = t["context"])).must_equal t["want"]
          end
        end
      end
    end
  end
end
