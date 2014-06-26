class RestaurantsController < ApplicationController

	def find_restaurant
		Restaurant.find(params[:id])
	end

  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)

  	if @restaurant.save
  		redirect_to restaurant_path(@restaurant)
  	else 
  		render "new"
  	end
  end

  def edit
  	@restaurant = find_restaurant
  end

  def update
  	@restaurant = find_restaurant

  	if @restaurant.update_attributes(restaurant_params)
  		redirect_to restaurants_path(@restaurant)
  	else
  		render 'edit'
  	end
  end 

#check this over with mina to make sure the redirect is correct
 	def destroy
 	 @restaurant = find_restaurant
 	 @restaurant.destroy
 	 redirect_to restaurants_path(@restaurants)	
 	end


  private 
  def restaurant_params
  	params.require(:restaurant).permit(:name, :summary, :email, :address, :capacity)
  end 
end
