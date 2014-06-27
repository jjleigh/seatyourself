class User < ActiveRecord::Base
	has_secure_password

	validates :email,
						:name,
						:presence => true
	validates	:password, :length => {minimum: 6}

	
	has_many :reservations
	has_many :restaurants, :through => :reservations
end
