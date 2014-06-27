class Reservation < ActiveRecord::Base
	belongs_to :users
	belongs_to :restaurants

	#validates :time, :date, :group_size, :presence => true
  #validates :group_size, :numericality => {greater_than_or_equal_to: 1, lesser_than_or_equal_to: 100}				
end
