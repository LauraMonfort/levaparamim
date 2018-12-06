class RequestsController < ApplicationController

  def index
    if params[:query_origin].present? || params[:query_destination].present?
      @requests = Request.all
      @requests = @requests.search_by_origin(params[:query_origin]) if params[:query_origin].present?
      @requests = @requests.search_by_destination(params[:query_destination]) if params[:query_destination].present?
      #@requests = @requests.where(delivery_date: params[:query_delivery_date]) if params[:query_delivery_date].present?
    else
      @requests = Request.all

      # @requests = Request.where.not(latitude: nil, longitude: nil)
    end

    @markers = @requests.map do |request|
      {
        lng: request.longitude,
        lat: request.latitude,
        # infoWindow: { content: render_to_string(partial: "/requests/map_window", locals: { request: request }) }
      }

    end

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
    params.require(:request).permit(:delivery_date, :origin, :destination, :size, :price, :comment, :booked, :image)
  end

end
