class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :request

  validates :status, presence: true
end
