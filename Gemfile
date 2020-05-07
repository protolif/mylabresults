source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use PostgreSQL as the database for Active Record
gem 'pg', '1.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use Haml template engine over ERB
gem 'haml'
# Replace ERB generators with Haml ones
gem 'haml-rails'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Using node.js for JavaScript runtime
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Front-end JavaScript framework
gem 'jquery-rails', '~> 4.3.3'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Make jquery listen for $(document).on('page:change') in addition to $(document).ready
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Popper.js tooltip library
gem 'popper_js', '~> 1.14.5'
# Bootstrap Sass/js framework
gem 'bootstrap', '~> 4.3.1'
# Integrate Rails flash messages into Bootstrap notifications for user notifications
gem 'bootstrap_flash_messages'
# Sassy icon fonts for UX++
gem 'font-awesome-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'sorcery', '~> 0.15.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
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
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'webdrivers', '~> 4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
