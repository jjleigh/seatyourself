class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant

	#validates :time, :date, :group_size, :presence => true
  #validates :group_size, :numericality => {greater_than_or_equal_to: 1, lesser_than_or_equal_to: 100}	

  validate :available

private

	def available
		if !restaurant.availability(group_size, time)
			errors.add(:base, "Sorry, restaurant is full, please try again later")
		end
	end

end
