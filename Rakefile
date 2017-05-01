require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'phonewords'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :phonewords do
  task :setup do
    PhoneWords.setup
  end

  task :find, [ :phone ] do |t, args|
    p PhoneWords.find_words args[:phone]
  end
end