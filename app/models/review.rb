class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  VALID_RATING = [0, 1, 2, 3, 4, 5]

  validates :rating, inclusion: { in: VALID_RATING }, numericality: { only_integer: true }
end
