class Category < ActiveRecord::Base
	has_many :restaurants, dependent: :destroy
	validates :summary, :cuisine, :presence => true

end
