class ReviewsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @review = Review.new(review_params)
    @review.place = @place
    @review.user = current_user
    authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to place_path(@place) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'places/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
