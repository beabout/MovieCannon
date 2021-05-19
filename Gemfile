source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use postgres as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.9'

# Added 2-22-19
# Used with Active Record for public facing searches
gem 'ransack', github: 'activerecord-hackery/ransack'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Added 02-13-19
# Haml-rails provides Haml generators for Rails 4. It also enables Haml as the templating engine for you.
gem "haml-rails", "~> 1.0"

# Added 02-13-19
# For admin use
gem 'trestle'

# Added 02-19-19
# Active Storage database access for Trestle
gem 'trestle-active_storage'

# Added 02-13-19
# For admin/user login security
gem 'devise'

# Added 02-15-19
# CSS View Framework. Formatting for views with much content
gem 'bootstrap', '~> 4.3.1'

# Added 02-18-19
# gem 'bootstrap-sass'

# Added 02-19-19
# Enables active storage variant
gem 'image_processing', '~> 1.2'

# Added 02-26-19
# JS and CSS WYSIWYG styling
gem 'trix-rails', require: 'trix'

# Added 03-04-19
# Nested Form handling
gem 'cocoon'

# Added 03-05-19
gem 'jquery-rails'

# Added 03-20-19
# Postgres searching
gem 'pg_search'

# Added 03-27-19
# To make links look super cool using fa icons
gem 'awesome_link'

gem 'webpacker'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
