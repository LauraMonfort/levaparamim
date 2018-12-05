class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @request = Request.find(params[:request_id])
    @booking = Booking.new
    @booking.request = @request
    @booking.user = User.first
    @booking.save!
      # if current_user
      #   redirect_to booking_show_path
      # else
      #   redirect_to user_session
      # end
    end

end
