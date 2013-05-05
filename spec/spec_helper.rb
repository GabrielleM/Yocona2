begin
require 'simplecov'
SimpleCov.start 'rails'
rescue Exception => e
  
end


ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
#require 'email_spec'
require 'rspec/autorun'

RSpec.configure do |config|
    config.include Devise::TestHelpers, :type => :controller

 class TripsController < ApplicationController
    skip_before_filter :authenticate_user!
 end

 class RiversController < ApplicationController
    skip_before_filter :authenticate_user!
 end


  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  #config.fail_fast = true
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
        DatabaseCleaner.start
    DatabaseCleaner.clean

  end
  config.before(:each) do
    
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end

end
