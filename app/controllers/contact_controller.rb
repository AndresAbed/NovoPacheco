class ContactController < ApplicationController
  def new
  end
  def contact_form
    message = Message.new(params[:contact_form])
    if message.valid?
      Contact.contact(message).deliver
      flash[:notice] = "Mensaje enviado. Gracias por contactarnos"
      render :new
    else
      flash[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."
      render :new
    end
  end
  def feedback
    message = Feedback.new(params[:feedback])
    if message.valid?
      Contact.feedback(message).deliver
      flash[:notice] = "Mensaje enviado. Gracias por contactarnos"
      redirect_to :back
    else
      flash[:alert] = "Mensaje no enviado. Asegúrate de completar todos los campos."
      redirect_to :back
    end
  end
end
