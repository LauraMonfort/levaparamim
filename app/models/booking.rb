class Booking < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :request, optional: true

  validates :status, presence: true
end
