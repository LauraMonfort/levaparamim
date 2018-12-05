class Request < ApplicationRecord
  belongs_to :user
  has_one :booking

  validates :delivery_date_time, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :size, presence: true
  # validates :image, presence: true
  validates :price, presence: true
  validates :comment, presence: true
  validates :booked, presence: true

 include PgSearch
  # pg_search_scope :search_by_type, :against => :capacity
  pg_search_scope :search_by_origin, against: :origin
  pg_search_scope :search_by_destination, against: :destination
  # pg_search_scope :search_by_end_date_time, :against => :end_date_time

end
