class Review < ApplicationRecord
  belongs_to :booking

  has_many :users

  validates :rating, presence: true
  validates :content, presence: true
  validates :review_type, presence: true
end
