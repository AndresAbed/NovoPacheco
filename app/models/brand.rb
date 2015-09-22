class Brand < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :logo, presence: {message: 'no puede estar vacío'}
  has_one :detail, dependent: :destroy

  has_attached_file :logo, 
  url: "/images/brands/:id/:style/:basename.:extension"
  validates_attachment :logo, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :image1, 
  url: "/images/brands/:id/:style/:basename.:extension"
  validates_attachment :image1, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :image2, 
  url: "/images/brands/:id/:style/:basename.:extension"
  validates_attachment :image2, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_attached_file :image3, 
  url: "/images/brands/:id/:style/:basename.:extension"
  validates_attachment :image3, content_type: { content_type: 
    ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
