class Message
  include ActiveModel::Model
  include ActiveModel::Validations
  attr_accessor :name, :email, :subject, :message

  validates_presence_of :email, message: "no puede estar vacío"
  validates_presence_of :message, message: "no puede estar vacío"
end