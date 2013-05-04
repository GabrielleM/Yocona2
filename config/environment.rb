# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Yocona2::Application.initialize!


# Yocona2::Application.configure do
#    config.active_support.deprecation = :log
#    config.cache_classes = false

# # MH 4/30/13 - set up SMTP server to let app send emails to onfirm sign-in
# 	config.action_mailer.delivery_method = :smtp
# 	config.action_mailer.raise_delivery_errors = true
# end


# ActionMailer::Base.smtp_settings = {
#   :address  => "smtp.gmail.net",
#   :port  => 25,
#   :user_name  => "yoconatrips@gmail.com",
#   :password  => "chipmunksrule",
#   :authentication  => :login
# }


