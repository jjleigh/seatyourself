class Reservation < ActiveRecord::Base
	belongs_to :Users
	belongs_to :Restaurants
end
