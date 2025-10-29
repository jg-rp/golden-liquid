# frozen_string_literal: true

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
      tags = t["tags"] || []
      mode = if tags.include?("strict")
               :strict
             elsif tags.include?("rigid")
               :rigid
             else
               :lax
             end
      if t["invalid"]
        assert_raises Liquid::Error do
          Liquid::Template.parse(
            t["template"],
            environment: test_env,
            error_mode: mode,
            line_numbers: true
          ).render!(t["data"])
        end
      else
        template = Liquid::Template.parse(
          t["template"],
          environment: test_env,
          error_mode: mode,
          line_numbers: true
        )

        if t["result"]
          _(template.render(t["data"])).must_equal t["result"]
        else
          _(t["results"]).must_include template.render(t["data"])
        end
      end
    end
  end
end
