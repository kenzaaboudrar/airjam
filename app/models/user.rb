class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :places
  has_many :reservations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  mount_uploader :avatar, PhotoUploader
  mount_uploader :band_photo, PhotoUploader
end
