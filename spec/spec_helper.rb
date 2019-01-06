# frozen_string_literal: true

require 'bundler/setup'
require 'rspec/benchmark'

RSpec.configure do |config|
  config.include(RSpec::Benchmark::Matchers)

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.disable_monkey_patching!

  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 2
end
