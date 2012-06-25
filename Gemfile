source 'https://rubygems.org'

gem 'rails', '3.2.3'

group :production do
  gem 'pg'
  gem 'newrelic_rpm'
end

gem 'nokogiri'
gem 'twitter-bootstrap-rails'
gem 'mail', '~> 2.3'
gem 'httparty'
gem 'will_paginate', '~> 3.0'
gem 'devise', '~> 2.0'
gem 'heroku'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'dynamic_form'
gem 'jquery-rails'

group :test, :development do
	gem 'sqlite3'
	gem 'rspec-rails', '~> 2.5'
	gem 'guard-rspec'
end

group :test do
	gem 'cucumber-rails', '1.0.6'
	gem 'capybara'
	gem 'database_cleaner'
	gem 'factory_girl'
	gem 'launchy'
end
