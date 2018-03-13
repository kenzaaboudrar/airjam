class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @places = Place.all
    @places = policy_scope(Place).order(created_at: :desc)
    # @places = []
    # Place.all.each { |place| @places << place if place.address.include?(params[:search_string]) || place.name.include?(params[:search_string]) || place.description.include?(params[:search_string]) }
  end

  def show
    @reservation = Reservation.new
    @place = Place.find(params[:id])
    authorize @place
  end

  def new
  end

  def create
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(place_params)
    authorize @place
    #if @place.save
  end

  def destroy
  end
end
