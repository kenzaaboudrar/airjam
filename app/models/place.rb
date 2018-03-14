class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations
  validates :name, presence: true
  validates :address, presence: true
  validates :stage_capacity, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :category, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
