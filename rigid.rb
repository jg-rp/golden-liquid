# frozen_string_literal: true

require "json"
require "liquid"

MemoryFileSystem = Struct.new(:templates) do
  def read_template_file(path)
    templates.fetch(path)
  end
end

file_system = MemoryFileSystem.new({})

env = Liquid::Environment.build do |env|
  env.file_system = file_system
end

golden = JSON.parse(File.read("golden_liquid.json"))

diffs = {}

golden["tests"].each do |t|
  file_system.templates = t["templates"]

  begin
    strict_template = Liquid::Template.parse(
      t["template"],
      environment: env,
      error_mode: :strict,
      line_numbers: true
    )

    strict_result = strict_template.render!(t["data"])
  rescue Liquid::Error
    strict_result = "<error>"
  end

  begin
    rigid_template = Liquid::Template.parse(
      t["template"],
      environment: env,
      error_mode: :rigid,
      line_numbers: true
    )
    rigid_result = rigid_template.render!(t["data"])
  rescue Liquid::Error
    rigid_result = "<error>"
  end

  diffs[t["name"]] = [strict_result, rigid_result] unless strict_result == rigid_result
end

diffs.each { |k, v| puts "#{k}:  #{v[0].inspect} -> #{v[1].inspect}" }
