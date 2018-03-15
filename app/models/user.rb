require 'date'

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


  def pending_reservations_as_owner
    @pending_reservations_as_owner = []
    self.reservations_as_owner.each {|resa| @pending_reservations_as_owner << resa if resa.status == "pending"}
    if @pending_reservations_as_owner.length > 0
    @pending_reservations_as_owner.sort_by { |resa| resa.date}
    else
      []
    end
  end

  def today_reservations_as_owner
    @today = Date.today
    @today_reservations_as_owner = []
    self.reservations_as_owner.each {|resa| @today_reservations_as_owner << resa if (resa.date.month == @today.month && resa.date.day == @today.day && resa.date.year == @today.year) }
    @confirmed_today = []
    @today_reservations_as_owner.each {|resa| @confirmed_today << resa if resa.status.downcase == "accepted"}
  end

  def all_reservations_as_owner
    @all_reservations_as_owner = self.reservations_as_owner - self.pending_reservations_as_owner - self.today_reservations_as_owner
  end

  def pending_reservations
    @pending_reservations = []
    self.reservations.each {|resa| @pending_reservations << resa if resa.status == "pending"}
    @pending_reservations.sort_by { |resa| resa.date} if @pending_reservations.length > 0
    return @pending_reservations
  end

  def today_reservations
    @today = Date.today
    today_reservations = []
    self.reservations.each {|resa| today_reservations << resa if (resa.date.month == @today.month && resa.date.day == @today.day && resa.date.year == @today.year) }
    return today_reservations
  end

  def all_reservations
    all_reservations = self.reservations - self.today_reservations - self.pending_reservations
  end

end
