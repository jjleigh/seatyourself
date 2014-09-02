class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, :through => :reservations
	has_many :reviews 

	belongs_to :category
	# belongs_to :owner, :class_name => "user" (now i need to add a owner_id column to the restuarants model)
	validates :name,:email,:address,:number,:summary,:price_range,:cuisine, :presence => true
	validates :capacity, :presence => true, :numericality => {greater_than_or_equal_to: 20}		

	def availability(group_size, time)
		reserve_size = reservations.where(time: time).sum(:group_size)
		reserve_size + group_size <= capacity
	end 
end
