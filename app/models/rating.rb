class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :stars, presence: true
  validates :review, length: { maximum: 200 }
end
