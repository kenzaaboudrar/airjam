class Reservation < ApplicationRecord
  belongs_to :places
  belongs_to :users
  validates :date, presence: true
  validates :duration, presence: true
  validates :date, uniqueness: {scope: :place_id}
end
