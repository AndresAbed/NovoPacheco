class Contact < ApplicationMailer
  default from: "Novo Pacheco <info@novopacheco.com>"

  def contact(message)
    @message = message
    mail(to: "info@novopacheco.com", subject: 'Contacto Web')
  end

  def feedback(message)
    @message = message
    mail(to: "info@novopacheco.com", subject: 'Contacto Web')
  end
end