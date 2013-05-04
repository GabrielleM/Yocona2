# class UserMailer < ActionMailer::Base
#   default :from => "notifications@example.com"
 
#   def welcome_email(user)
#     recipients email
#     from ENV['GMAIL_SMTP_USER']
#     subject 'Welcome'
#     sent_on Time.now
#   end

#   def signup_notification(user)
#     recipients "#{user.name} <#{user.email}>"
#     from       "My Forum "
#     subject    "Please activate your new account"
#     sent_on    Time.now
#     body       { :user => user, :url => activate_url(user.activation_code, :host => user.site.host }
#   end
# end
