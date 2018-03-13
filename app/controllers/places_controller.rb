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
    @place = Place.find(params[:id])
    authorize @place
  end

  def update
    @place = Place.find(params[:id])
    authorize @place
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:id])
    @user = @place.user
    authorize @place
    @place.destroy
    flash[:alert] = "#{@place.name} has been deleted."
    redirect_to user_path(@user)
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :stage_capacity, :price, :photo, :description, :category, :equipped)
  end
end
