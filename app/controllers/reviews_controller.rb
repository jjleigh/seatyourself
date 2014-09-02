class ReviewsController < ApplicationController
	before_filter :load_restaurant
	before_filter :ensure_logged_in 


	def create

		@review = @restaurant.reviews.build(review_params)
		@review.user_id = current_user.id


		respond_to do |format|

			if @review.save
				format.html {redirect_to restaurant_path(@restaurant.id)}
				format.js
			else
				format.html{render 'restaurants/show', alert: 'There was an error'}
				format.js {}
			end
		end
	end

	def show
		@review = Review.find(params[:id])
		
	end

	def destroy
		@review = Review.find(params[:id])

		@review.destroy
		redirect_to restaurant_path(@restaurant)
		
	end

	def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

	private

	def review_params
		params.require(:review).permit(:comment, :user_id, :restaurant_id)
		
	end

end
