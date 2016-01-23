require 'bundler/setup'
require 'rdoc/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ES6 Module Loader'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

APP_RAKEFILE = File.expand_path('../spec/dummy/Rakefile', __FILE__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new :test

RuboCop::RakeTask.new :lint

task test: %i(spec app:spec)

task default: %i(lint test build)
