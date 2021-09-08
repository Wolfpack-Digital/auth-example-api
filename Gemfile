source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"

# Core
gem 'bootsnap', ">= 1.2.0", require: false
gem 'pg', ">= 0.18"
gem 'puma', "~> 4.1"
gem 'rails', "~> 6.0.2.1"
gem 'sidekiq', ">= 5.2.0"

# Configuration
gem 'dotenv-rails', '~> 2.7', '>= 2.7.1'

# Auth
gem 'doorkeeper', '~> 5.2', '>= 5.2.3'
gem 'bcrypt', '~> 3.1', '>= 3.1.13'

# Serialization
gem 'active_model_serializers', '~> 0.10.9'

group :development do
  gem 'annotate', '~> 2.7', '>= 2.7.4'
  gem 'awesome_print', '~> 1.8'
  gem 'better_errors', '~> 2.8'
  gem 'brakeman', '~> 4.5', require: false
  gem 'bundler-audit', '~> 0.6.1', require: false
  gem 'letter_opener', '~> 1.7'
  gem 'listen', ">= 3.0.5"
  gem 'overcommit', '~> 0.46.0', require: false
  gem 'rubocop', '~> 0.66.0', require: false
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', "~> 2.0.0"
end

group :development, :test do
  gem 'bullet', '~> 6.1'
  gem 'database_cleaner', '~> 1.7'
  gem 'dox', '~> 1.1', require: false
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'faker', '~> 1.9', '>= 1.9.3'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'vcr', '~> 4.0'
end
