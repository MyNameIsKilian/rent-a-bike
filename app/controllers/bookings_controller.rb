class BookingsController < ApplicationController
  before_action :find_bike, only: [:new, :index, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    if @booking.save
      redirect_to bike_bookings_path(@bike)
    else
      render :new
    end
  end

  private

  def find_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
