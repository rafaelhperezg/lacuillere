class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show ]

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

  def show
    # line below not necessary because we have the before.... with the private method
    # @restaurant = Restaurant.find(params[:id])  #I receive the params when the user click on the link Show task
  end

private

  def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
