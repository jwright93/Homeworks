class UserMailer < ApplicationMailer
  default from: 'from@exaple.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://everybody@appacademy.io'
    mail(to: user.email, subject: 'Welcome to App Academy')
  end
end
