class User < ActiveRecord::Base
	has_many :reservations
	has_many :reviews
	has_many :restaurants, :through => :reservations
	#has_one :owned_restaurants, :class_name => "Restaurant", foreign_key => "owner_id"

	has_secure_password

	validates :email,
						:name,
						:presence => true
	validates	:password, :length => {minimum: 6}
end
