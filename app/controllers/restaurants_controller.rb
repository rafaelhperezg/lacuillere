class RestaurantsController < ApplicationController

  def index
      @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

private

def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end


end
