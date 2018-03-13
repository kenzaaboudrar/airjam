class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
    @reservation = Reservation.new
    @place = Place.find(params[:id])
    authorize @place
  end

  def new
    @place = Place.new
    authorize @place
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    authorize @place
    if @place.save
      redirect_to place_path(@place)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :stage_capacity, :price, :photo, :description, :category, :equipped)
  end
end
