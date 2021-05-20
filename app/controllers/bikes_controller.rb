class BikesController < ApplicationController
  before_action :find_bike, only: :show
  def index
    @bikes = Bike.all
    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude
      }
    end
  end

  def show
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  # def bike_params
  #   params.require(:bike).permit(:description, :size, :color, :price)
  # end
end
