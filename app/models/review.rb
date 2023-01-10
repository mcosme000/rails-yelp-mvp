class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: 0..5 }

  belongs_to :restaurant
end
