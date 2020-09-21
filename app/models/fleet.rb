class Fleet < ApplicationRecord
    belongs_to :user
    has_many :mileages

    scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
