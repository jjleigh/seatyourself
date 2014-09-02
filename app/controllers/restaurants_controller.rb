class RestaurantsController < ApplicationController
    before_filter :ensure_logged_in, :only =>[:new, :create, :edit, :destroy, :update]
	def find_restaurant
		Restaurant.find(params[:id])
	end



  def index
    @restaurants = Restaurant.search(params[:search])

    if @restaurants.size.zero?
      flash.now[:alert] = "No results found"
  	 @restaurants = Restaurant.all
    end
  end

  # def all
  #   @restaurants = if params[:search]
  #     Restaurant.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%").page(params[:page])
  #   else
  #     Restaurant.order('restaurants.name ASC').page(params[:page])
  #   end

  #   respond_to do |format| 
  #     format.html
  #     format.js 
  #   end

  # end


  def show
  	@restaurant = Restaurant.find(params[:id])
    @category = @restaurant.category

    if current_user
      @review = @restautant.reviews.build
    end
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id
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

 	def destroy
 	 @restaurant = find_restaurant
 	 @restaurant.destroy
 	 redirect_to restaurants_url
 	end


  private 
  def restaurant_params
  	params.require(:restaurant).permit(:name, :summary, :email, :address, :capacity, :number, :price_range, :category_id)
  end 
end
