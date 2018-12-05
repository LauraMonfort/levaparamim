class BookingsController < ApplicationController

  def index
    @booking = Booking.where(pa)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @request = Request.find(params[:request_id])
    @booking = Booking.new
    @booking.request = @request
    @booking.user = User.first
    @booking.status = "opened"
    @booking.save!
      # if current_user
      #   redirect_to booking_show_path
      # else
      #   redirect_to user_session
      # end
    end
end

