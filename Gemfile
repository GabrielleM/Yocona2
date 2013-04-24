source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.8'

# MH 3/24/13 -- Added for heroku functionality in command line 
gem "heroku"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "less-rails", ">= 2.2.6"
  gem "twitter-bootstrap-rails", ">= 2.2.4"
  gem "therubyracer", ">= 0.11.3", :platform => :ruby, :require => "v8"
end

group :development do 
  gem "html2haml", ">= 1.0.1"
  gem "hub", ">= 1.10.2", :require => nil
end 

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails", ">= 2.12.2"
  gem "launchy", ">= 2.2.0"
  gem "capybara", ">= 2.0.2"
  gem "email_spec", ">= 1.4.0"
  gem "database_cleaner", ">= 1.0.0.RC1"
  gem "cucumber-rails", ">= 1.3.1", :require => false
  gem 'cucumber-rails-training-wheels'
end 

group :production do
  gem 'pg'
end

gem 'jquery-rails'
gem "haml-rails", ">= 0.4"
gem "libv8", ">= 3.11.8"
gem "devise", ">= 2.2.3"
gem "devise_invitable", ">= 1.1.5"
gem "cancan", ">= 1.6.9"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.1.0"

# MH 3/24/13 -- Added for photo/resource upload plugin 
gem 'carrierwave', '>= 0.5.3'
gem "mini_magick"
gem 'nested_form'

gem 'annotate', ">=2.5.0"

