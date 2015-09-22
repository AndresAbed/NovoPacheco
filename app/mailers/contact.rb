class Contact < ApplicationMailer
  default from: "info@novopacheco.com"

  def contact(message)
    @message = message
    mail(to: "abedandres@gmail.com", subject: 'Test')
  end

  def feedback(message)
    @message = message
    mail(to: "abedandres@gmail.com", subject: 'Test')
  end
end