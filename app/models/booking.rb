class Booking < ApplicationRecord
  has_one :user
  has_one :car

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true
  validates :status, presence: true
end
