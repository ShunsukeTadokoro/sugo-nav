class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def registration_confirmation(user)
    @greeting = "Hi"
    @user = user
    @name = user.name
    mail to: "s.tadokoro0317@i.softbank.jp"
  end
end
