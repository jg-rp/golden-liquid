require 'json'
require "minitest/autorun"
require 'liquid'

MemoryFileSystem = Struct.new(:templates) do
  def read_template_file(path)
    templates.fetch(path)
  end
end

golden = JSON.parse(File.read('golden_liquid.json'))

describe "Golden" do
  golden["test_groups"].each do |group|
    describe group["name"] do
      group["tests"].each do |t|
        if t["standard"]
          it t["name"] do
              Liquid::Template.file_system = MemoryFileSystem.new(t["partials"])
              template = Liquid::Template.parse(t["template"])
              _(template.render(context = t["context"])).must_equal t["want"]
          end
        else
          it t["name"] # skip
        end
      end
    end
  end
end
