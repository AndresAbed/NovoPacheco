class Event < ActiveRecord::Base
  validates :image, presence: true
  has_attached_file :image, 
  url: "/images/events/:id/:style/:basename.:extension"
  validates_attachment :image, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
