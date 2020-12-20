# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use sqlite3 as the database for Active Record

gem 'pg'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
# gem 'jquery-rails', '~> 4.4'
# gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'htmlbeautifier', '~> 1.3', '>= 1.3.1'

gem 'image_processing', '~> 1.2'
gem 'rss'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'gravtastic'
gem 'rubocop', '~> 0.92.0', require: false
gem 'stripe'
gem 'devise'
gem 'dotenv-rails', groups: [:development, :test]
gem 'bootsnap', '>= 1.4.2', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'country_select'
gem 'nokogiri', '~> 1.10', '>= 1.10.10'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot', '~> 4.8', '>= 4.8.2'
  gem 'rspec-rails'
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
  gem 'bullet'
  gem 'rails-erd'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

