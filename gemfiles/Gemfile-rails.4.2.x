source 'https://rubygems.org'
gemspec :path => '../'
gem 'rails', '~> 4.2.5'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'capybara'
  gem 'capybara-email'
  gem 'launchy'
  gem 'poltergeist'
  gem 'database_rewinder'
  gem 'timecop'
  gem 'email_spec'
  gem 'jquery-rails'
end

group :test do
  gem 'generator_spec'
end
