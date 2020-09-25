class Fleet < ApplicationRecord
  belongs_to :user
  has_many :mileages

  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }

  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
