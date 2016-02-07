require 'rspec'
require_relative '../app'

# Do not print debug messages from ActiveRecord
ActiveRecord::Base.logger.level = 1

Dir["#{__dir__}/support/*.rb"].each { |file| require_relative file }
