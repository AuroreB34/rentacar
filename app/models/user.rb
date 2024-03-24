class User < ApplicationRecord
  has_many :bookings

  validates :name, uniqueness: true, presence: true
  validates :adress, presence: true
  validates :email, presence: true
  validates :profile_pic, presence: true
end
