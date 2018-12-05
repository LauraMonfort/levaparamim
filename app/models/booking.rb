class Booking < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :request, optional: true
  has_many :reviews, dependent: :destroy

  validates :status, presence: true
end
