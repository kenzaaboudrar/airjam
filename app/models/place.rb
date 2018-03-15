class Place < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
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

  include PgSearch
  pg_search_scope :search_by_name_address_category_and_description,
  against: [ :name, :address, :category, :description ],
  using: {
    tsearch: { prefix: true }
  }
end
