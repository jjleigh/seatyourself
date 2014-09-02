class ReservationsController < ApplicationController
	before_filter :ensure_logged_in, :only =>[:edit, :create, :show, :update, :destroy]

	def index
		@reservations = Reservation.all
	end

	def show
		@reservation = Reservation.find(params[:id])
	end
	
	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = @restaurant.reservations.build

		today= Date.today
		two_weeks_away = today + 14.days
		@limit = (today..two_weeks_away)
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = @restaurant.reservations.build(reservation_params)
		@reservation.user_id = current_user.id

		if @reservation.save 
			redirect_to restaurant_reservation_path(params[:restaurant_id], @reservation)
		else
			render 'new'
		end
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])

		if @reservation.update_attributes(reservation_params)
			redirect_to reservation_show_path
		else
			render 'edit'
		end	
	end

	def date

		
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to user_path(current_user)	
	end
	
	private 
	def reservation_params
		params.require(:reservation).permit(:time, :date, :group_size)
	end
end
