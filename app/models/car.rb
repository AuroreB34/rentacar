class Car < ApplicationRecord
  belongs_to :user

  validates :matriculation, presence: true, uniqueness: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
end
