class Mileage < ApplicationRecord
  validates_presence_of :distance

  belongs_to :user
  belongs_to :fleet
end
