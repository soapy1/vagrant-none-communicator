require 'rubygems'
require 'bundler/setup'
require 'rake/testtask'
require 'rspec/core/rake_task'

# Immediately sync all stdout so that tools like buildbot can
# immediately load in the output.
$stdout.sync = true
$stderr.sync = true

# This installs the tasks that help with gem creation and
# publishing.
Bundler::GemHelper.install_tasks

namespace :test do
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = "test/unit/**/*_test.rb"
    t.rspec_opts = "--color"
  end
end

task default: "test:unit"
