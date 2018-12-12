class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @request = Request.find(params[:request_id])
    @booking = Booking.new
    @booking.request = @request
    @booking.user = current_user
    @booking.status = "Pending"
    @booking.save!
      if current_user
        redirect_to requests_path
      else
        redirect_to user_session
      end
    end
end
