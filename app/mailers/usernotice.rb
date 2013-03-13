class Usernotice < ActionMailer::Base
  default from: "nthucrowdfunding@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usernotice.context.subject
  #
  def sendemail(email,topic,context)
  
    mail(:to => email, :subject => topic, :body=>context)
  
  end
end
