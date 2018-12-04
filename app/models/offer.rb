class Offer < ApplicationRecord

  belongs_to :user

  validates :delivery_date, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :size, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :comment, presence: true

end
