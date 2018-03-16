class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :pending_reservations_as_owner]

  def show
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user
    @user.update(user_params)
    raise
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :band_manager, :band_name, :number_of_musicians, :music_type, :band_description, :band_photo)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
