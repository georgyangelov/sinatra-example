require 'sinatra'
require 'sinatra/activerecord'

Dir["#{__dir__}/models/*.rb"].each { |file| require_relative file }
Dir["#{__dir__}/routes/*.rb"].each { |file| require_relative file }

set :bind, '0.0.0.0'
set :root, __dir__
