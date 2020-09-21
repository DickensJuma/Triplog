class Mileage < ApplicationRecord
   
    validates_presence_of :distance

    belongs_to :user, optional: true
    belongs_to :fleet
end
