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

  def average_rating
    @ratings = self.reviews.map {|review| review.rating}
    if @ratings.length > 0
      @average_rating = @ratings.reduce(:+)/(@ratings.length)
    else
      0
    end
  end
end
