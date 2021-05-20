class Owner::BikesController < ApplicationController
  before_action :find_bike, only: [:show, :edit, :update, :destroy]
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

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to owner_bike_path(@bike)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bike.update(bike_params)
    redirect_to owner_bike_path(@bike)
  end

  def destroy
    @bike.destroy
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:description, :size, :color, :price, :accessories, photos: [])
  end
end
