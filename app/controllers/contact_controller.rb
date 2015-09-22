class ContactController < ApplicationController
  def new
  end
  def contact_form
    message = Message.new(params[:contact_form])
    if message.valid?
      Contact.send_message(message).deliver
      flash[:notice] = "Mensaje enviado"
      redirect_to :back
    else
      flash[:alert] = "El mensaje no puedo ser enviado, intenta de nuevo"
      redirect_to :back
    end
  end
end
