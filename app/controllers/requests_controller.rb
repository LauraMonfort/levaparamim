class RequestsController < ApplicationController

# skip_before_action :authenticate_user!, only: :home

SIZE = "<option disabled selected>Size of your item</option><option>Fits in a pocket<option>Fits in a bag<option>Fits in a car<option>Fits in a big car<option>Fits in a van"

def index
    @requests = Request.all
    @requests = @requests.where(size: params[:query_size]) if params[:query_size].present?
    @requests = @requests.search_by_origin(params[:query_origin]) if params[:query_origin].present?
    @requests = @requests.search_by_destination(params[:query_destination]) if params[:query_destination].present?
    @requests = @requests.where(delivery_date_time: params[:query_delivery_date_time]) if params[:query_delivery_date_time].present?
  end

  def home
  end

  def show
    @request = Request.find(params[:id])
    # @review = Review.where(user: @request.user)
  end

  def new
    @user = current_user
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      redirect_to user_request_path(current_user, @request)
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    redirect_to user_request_path(@request)
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to requests_path
  end

  private

  def request_params
    params.require(:request).permit(:delivery_date_time, :origin, :destination, :size, :price, :comment)
  end


end
