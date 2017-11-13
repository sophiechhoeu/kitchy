class ExampleMailer < ActionMailer::Base
  default from: "sophiechhoeu@hotmail.com"


  def sample_email(user)
   @profile = user
   mail(to: @user, subject: 'Sample Email')
  end


end
