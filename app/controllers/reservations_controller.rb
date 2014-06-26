class ReservationsController < ApplicationController
	def show

	end
	
	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)

		if @reservation.save 
			redirect_to 
		else
			render 'new'
		end
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])
		
	end

end
