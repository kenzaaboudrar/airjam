class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user
      redirect_to places_path
      # redirect_to user_path(current_user)
    end
  end

  # def search
  #   TO DO JEUDI
  # end
end
