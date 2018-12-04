class BookingsController < ApplicationController
  before_action :authenticate_user!
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    @booking.offer = @offer
    @booking.user = User.first
    @booking.save!
      # if current_user
      #   redirect_to booking_show_path
      # else
      #   redirect_to user_session
      # end
    end

end
