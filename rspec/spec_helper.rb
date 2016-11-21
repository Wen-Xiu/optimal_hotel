require 'rspec'
require 'pry'
require_relative '../lib/hotel_rates'
require_relative '../lib/input_process'

RSpec.configure do |config|
  config.order = :random
  config.color = true
  config.formatter = :documentation
end
