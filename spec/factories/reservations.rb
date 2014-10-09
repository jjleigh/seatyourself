require 'faker'

FactoryGirl.define do
	factory :reservation do
		avaliable {Faker::Internet.email}
		time {Faker::Internet.email}
		date {Faker::Internet.email}
		group_size 
	end
end