class Usermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  
   def welcome(employer)
    @employer = employer
	mail(:to => employer.email, :subject => "Welcome to the blog site!")
  end
end
