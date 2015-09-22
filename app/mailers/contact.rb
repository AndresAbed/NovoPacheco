class Contact < ApplicationMailer
  default from: "info@novopacheco.com"

  def send_message(message)
    @message = message
    mail(to: "abedandres@gmail.com", subject: 'Aprende a programar con nuestros cursos gratis')
  end
end
