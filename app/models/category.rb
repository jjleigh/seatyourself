class Category < ActiveRecord::Base
	has_many :restaurants, dependent: :destroy


	# validations
	validates :summary, :cuisine, :presence => true

end
