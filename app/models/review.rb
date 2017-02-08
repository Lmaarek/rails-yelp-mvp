class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5] }
  validates :content, presence: true
end
