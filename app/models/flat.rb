class Flat < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true
end
