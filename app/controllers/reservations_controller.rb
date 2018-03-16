class ReservationsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.place = @place
    @reservation.user = current_user
    @reservation.price = @place.price * @reservation.duration
    authorize @reservation
    if @reservation.save
      redirect_to user_path(@reservation.user)
    else
      render "places/show"
      flash[:alert] = "Reservation request failed."
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

  private

  def reservation_params
    params.require(:reservation).permit(:date, :duration)
  end
end
