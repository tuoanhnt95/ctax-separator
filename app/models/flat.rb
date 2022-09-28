class Flat < ApplicationRecord
  validates :price_per_night, numericality: { only_integer: true, greater_than: 0 }
  validates :number_of_guests, numericality: { only_integer: true, greater_than: 0 }
end
