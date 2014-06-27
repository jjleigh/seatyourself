class ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end

	def show
		@reservation = Reservation.find(params[:id])
	end
	
	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)

		if @reservation.save 
			redirect_to #i want to go to the reservation page or the user page
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
			redirect_to #i want to redirect to the user page or the reservation page
		else
			render 'edit'
		end	
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to #i would like to go back to my user page	
	end
	
	private 
	def reservation_params
		params.require(:reservation).permit(:time, :date, :group_size)
	end
end
