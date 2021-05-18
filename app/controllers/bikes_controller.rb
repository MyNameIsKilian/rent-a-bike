class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  private

  def bike_params
    params.require(:bike).permit(:description, :size, :color, :price)
  end
end
