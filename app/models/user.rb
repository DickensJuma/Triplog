class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }

  has_many :fleets
  has_many :mileages
end
