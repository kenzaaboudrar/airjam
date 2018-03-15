class ReviewsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @review = Review.new(review_params)
    @review.place = @place
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to place_path(@place)
    else
      render "places/show"
      flash[:alert] = "Review post failed, please try again."
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
