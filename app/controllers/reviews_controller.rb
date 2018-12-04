class ReviewsController < ApplicationController
  before_action :authenticate_user!
  def index
  @reviews = Review.all
  end

  def new
  @user = current_user
  @review = Review.new
  end

  def create
  @review = Offer.new(review_params)
  @review.user = current_user
  if @review.save
    redirect_to user_review_path(current_user, @review)
  else
    render 'new'
  end
  end

end
