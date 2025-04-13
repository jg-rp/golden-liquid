# frozen_string_literal: true

require "benchmark/ips"
require "json"
require "pathname"
require "liquid"

MemoryFileSystem = Struct.new(:templates) do
  def read_template_file(path)
    templates.fetch(path)
  end
end

# A benchmark fixture
class Fixture
  attr_reader :templates, :data

  def initialize(path)
    @root = Pathname.new(path)
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

fixture = Fixture.new("benchmark_fixtures/002")
env = fixture.env
source = fixture.templates["index.liquid"]
template = Liquid::Template.parse(source, environment: env, line_numbers: true)

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(warmup: 2, time: 5)

  x.report("parse:") do
    Liquid::Template.parse(source, environment: env, line_numbers: true)
  end

  x.report("render:") do
    template.render!
  end

  x.report("parse and render:") do
    Liquid::Template.parse(source, environment: env, line_numbers: true).render
  end
end
