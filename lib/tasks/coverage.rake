# frozen_string_literal: true

namespace :test do
  task :coverage do
    require 'simplecov'
    Rake::Task['rspec'].execute
  end
end
