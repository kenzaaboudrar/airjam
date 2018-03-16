class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!, :only => :notify
  def create
    @place = Place.find(params[:place_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.place = @place
    @reservation.user = current_user
    @reservation.price = @place.price * @reservation.duration
    authorize @reservation
    if @reservation.save
      respond_to do |format|
        format.html { redirect_to user_path(@reservation.user) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "places/show" }
        format.js
      end
    end
  end

  def accept
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    respond_to do |format|
      format.html {
        @reservation.status = "accepted"
        @reservation.save
        @place = @reservation.place
        redirect_to place_path(@place)
      }
      format.js
    end
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = "declined"
    authorize @reservation
    @reservation.save
    @place = @reservation.place
    redirect_to place_path(@place)
  end

  def notify
    @user = User.find(params[:user_id])
    @notification = @user.pending_reservations_as_owner.length
    authorize @notification
    render json: {number: @notification}.to_json
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :duration)
  end
end
