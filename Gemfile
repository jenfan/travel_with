source 'https://rubygems.org'
ruby '2.2.2'


gem 'capistrano', github: 'capistrano/capistrano', ref: '96a16', group: :development
gem 'unicorn' , group: :production
gem 'rvm-capistrano',  require: false
gem 'capistrano-ext' 
# gem 'therubyracer', platforms: :ruby

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.9'
gem 'fb_graph'
gem 'net-ssh', '!= 2.10.0'
gem 'pg', "0.18.2", group: :production
gem "cf-autoconfig", "~> 0.2.1"
gem 'rails_12factor', group: :production
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  gem 'sqlite3'
end

