class Reservation < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :date, presence: true
  validates :duration, presence: true
  validates :date, uniqueness: {scope: :place_id}
end
