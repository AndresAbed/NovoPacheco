class Detail < ActiveRecord::Base
  validates :brand_id, presence: {message: "debe elegir una marca"}
  validates :open_hour, presence: {message: "no puede estar vacío"}
  validates :close_hour, presence: {message: "no puede estar vacío"}
  belongs_to :brand
end
