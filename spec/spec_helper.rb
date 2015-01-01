require 'active_job-retry'
require 'rspec/its'
require 'pry'

ActiveJob::Base.queue_adapter = :resque

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!

  config.warnings = true

  # config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed
end
