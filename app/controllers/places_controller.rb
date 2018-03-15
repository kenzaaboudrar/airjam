class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @places = Place.order(created_at: :desc).where.not(latitude: nil, longitude: nil)
    if Place.near(params[:query], 5).present?
      @places = Place.near(params[:query], 5)
    else
      @places = Place.search_by_name_address_category_and_description(params[:query]).order(created_at: :desc).where.not(latitude: nil, longitude: nil)
    end

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) }
      }
    end
  end

  def filter_by_price
    @places = index
    # if clicks on price range
    # show only places where price_range.includes? place.price
    # attach to event listener "click"

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
