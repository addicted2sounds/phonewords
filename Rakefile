require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'phonewords'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :setup do
  PhoneWords.setup
end