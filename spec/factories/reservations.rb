require 'faker'

FactoryGirl.define do
	factory :reservation do 
		# available true
		time {Faker::Time.forward(14, :morning)}
		date {Faker::Date.forward(3)}
		group_size 2
	end
end