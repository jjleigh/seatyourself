class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, :through => :reservations

	# belongs_to :owner, :class_name => "user" (now i need to add a owner_id column to the restuarants model)
	validates :name,:email,:address,:number,:summary,:price_range, :presence => true
	validates :capacity, :presence => true, :numericality => {greater_than_or_equal_to: 20}		
end
