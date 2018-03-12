class Place < ApplicationRecord
  belongs_to :users
  has_many :reservations
  validates :name, presence: true
  validates :address, presence: true
  validates :stage_capacity, presence: true
  validates :equipped, presence: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :category, presence: true
  mount_uploader :photo, PhotoUploader
end
