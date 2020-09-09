class ReviewsController < ApplicationController

  def create
    binding.pry
    review = Review.create(review_params)
    redirect_to "/dog_items/#{review.item.id}"
  end

  private

  def review_params
    params.require(:review).permit(:evaluation_id, :title, :content, :dog_breed_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
