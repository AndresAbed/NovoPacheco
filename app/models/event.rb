class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: {message:'no puede estar vacío'}
  has_attached_file :image, 
  url: "/images/events/:id/:style/:basename.:extension"
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
