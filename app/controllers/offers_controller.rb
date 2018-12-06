class OffersController < ApplicationController

  SIZE = "<option disabled selected>Size of your item</option><option>Fits in a pocket<option>Fits in a bag<option>Fits in a car<option>Fits in a big car<option>Fits in a van"

  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  def index
    @offers = Offer.all
    @offers = @offers.where(size: params[:query_size]) if params[:query_size].present?
    @offers = @offers.search_by_origin(params[:query_origin]) if params[:query_origin].present?
    @offers = @offers.search_by_destination(params[:query_destination]) if params[:query_destination].present?
    @offers = @offers.where(delivery_date_time: params[:query_delivery_date_time]) if params[:query_delivery_date_time].present?
  end

  def home
  end

  def show
    @offer = Offer.find(params[:id])
    # @review = Review.where(user: @offer.user)
  end

  def new
    @user = current_user
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to user_offer_path(current_user, @offer)
    else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to user_offer_path(@offer)
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:delivery_date_time, :origin, :destination, :size, :price, :comment)
  end

end
