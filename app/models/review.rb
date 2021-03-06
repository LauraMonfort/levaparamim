class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true
  validates :review_type, presence: true
end
