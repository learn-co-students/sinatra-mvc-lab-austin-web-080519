ENV["SINATRA_ENV"] = "test"

require_relative '../config/environment.rb'
require 'rack/test'
require 'capybara/dsl'

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods
  config.filter_run_including :focus => true
  config.run_all_when_everything_filtered = true
  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app
