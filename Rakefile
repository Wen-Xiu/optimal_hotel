# require_relative "e2e/cheapest_hotel_e2e"
# require 'rspec'
# desc "run e2e test"
# task :e2e do
#   rspec "e2e/cheapest_hotel_e2e.rb"
# end

require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:e2e) do |task|
  task.pattern = FileList['e2e/*_e2e.rb']
end