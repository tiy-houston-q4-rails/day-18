class Taco < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 4, maximum: 255 }
  validates :ingredients, :photo_url, presence: true
end
