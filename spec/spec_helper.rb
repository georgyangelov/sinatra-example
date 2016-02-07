ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'capybara/rspec'
require 'rack/test'

require_relative '../app'

Dir["#{__dir__}/support/*.rb"].each { |file| require_relative file }

Capybara.configure do |config|
  config.app = Sinatra::Application
end
