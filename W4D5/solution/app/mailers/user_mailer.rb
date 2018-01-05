class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'
  layout 'mailer'

  def welcome_email(user)
   @user = user
   @url  = 'http://example.com/login'
   mail(to: "sbw2122@columbia.edu", subject: 'Welcome to My Awesome Site')
 end
end
