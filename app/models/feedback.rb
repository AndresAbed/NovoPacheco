class Feedback
  include ActiveModel::Model
  attr_accessor :email, :message

  validates_presence_of :email
  validates_presence_of :message
end