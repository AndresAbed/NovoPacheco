class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :message

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :subject
  validates_presence_of :message
end