class Booking < ApplicationRecord

  belongs_to :offer
  has_many :users, :reviews

end
