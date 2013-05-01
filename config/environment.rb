# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Yocona2::Application.initialize!

# MH 4/30/13 - set up SMTP server to let app send emails to onfirm sign-in
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.raise_delivery_errors = true


