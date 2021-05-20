class Owner::BookingsController < ApplicationController
  before_action :find_booking, only: :update

  def index
    @bookings = Booking.all.select do |booking|
      booking.bike.user == current_user
    end
  end

  # def new
  #   @booking = Booking.new
  # end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @booking.user = current_user
  #   @booking.bike = @bike
  #   if @booking.save
  #     redirect_to bike_booking_path(@bike, @booking)
  #   else
  #     render :new
  #   end
  # end

  def show
  end

  # def edit
  # end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

#   def find_bike
#     @bike = Bike.find(params[:bike_id])
#   end

#   def booking_params
#     params.require(:booking).permit(:start_date, :end_date)
#   end
end
