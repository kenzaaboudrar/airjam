class UsersController < ApplicationController
  def show
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    if @user.save
      redirect_to places_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :band_manager, :band_name, :number_of_musicians, :music_type, :band_description, :band_photo)
  end
end
