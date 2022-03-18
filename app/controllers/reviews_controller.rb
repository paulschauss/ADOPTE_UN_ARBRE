class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @adoption = Adoption.find(params[:adoption_id])
    @review.adoption = @adoption
    @review.user = current_user
    @review.save
    redirect_to my_profile_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
