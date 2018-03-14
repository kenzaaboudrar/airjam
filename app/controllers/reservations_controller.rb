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
    @reservation.status = "Accepted"
    authorize @reservation
    @reservation.save
    redirect_to user_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.status = "Declined"
    @reservation.save
    redirect_to user_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :duration)
  end
end
