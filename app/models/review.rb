class Review < ApplicationRecord
  belongs_to :booking
  has_one :user

  validates :content, presence: true
  validates :rating, presence: true
  validates :review_type, presence: true
end
