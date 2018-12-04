class Review < ApplicationRecord
  belongs_to :booking

  has_many :users
end
