class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :places, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reservations_as_owner, through: :places, source: :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :reviews_as_owner, through: :places, source: :reviews, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  mount_uploader :avatar, PhotoUploader
  mount_uploader :band_photo, PhotoUploader
end
