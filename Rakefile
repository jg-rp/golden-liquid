# frozen_string_literal: true

require "minitest/test_task"

Minitest::TestTask.create(:test) do |t|
  t.test_globs = ["golden_liquid.rb"]
end

require "rubocop/rake_task"

RuboCop::RakeTask.new do |task|
  task.plugins << "rubocop-minitest"
  task.plugins << "rubocop-rake"
end

require_relative "build"

desc "Build the golden Liquid test suite"
task :build do |_t|
  test_suite = build([], false, false)
  File.write("golden_liquid.json", JSON.pretty_generate(test_suite))
  warn "Wrote #{test_suite["tests"].length} tests to golden_liquid.json."
end

Rake::Task[:test].enhance [:build]

task default: %i[test]
