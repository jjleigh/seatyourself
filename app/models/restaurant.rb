class Restaurant < ActiveRecord::Base
	has_many :reservations
	has_many :users, :through => :reservations

	validates :name, :presence => true
	validates :email, :presence => true
	validates :address, :presence => true
	validates :number, :summary, :presence => true 
	validates :capacity, :presence => true, :numericality => {greater_than_or_equal_to: 20}
	validates :price_range, :presence => true			
end
