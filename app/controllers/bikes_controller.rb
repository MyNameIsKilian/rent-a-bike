class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end
  
   def show
    @bike = Bike.find(params[:id])
  end
  
  private

  def bike_params
    params.require(:bike).permit(:description, :size, :color, :price)
  end
end
