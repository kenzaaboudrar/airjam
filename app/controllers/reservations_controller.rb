class ReservationsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.place = @place
    @reservation.user = current_user
    @reservation.price = @place.price * @reservation.duration
    authorize @reservation
    if @reservation.save
      redirect_to place_path(@place)
    else
      render "places/show"
    end
  end

  def destroy
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "Accepted"
    @reservation.save
    authorize @reservation
  end

  def decline
    @reservation.status = "Declined"
    @reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :duration)
  end
end
