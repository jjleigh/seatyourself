require 'faker'

FactoryGirl.define do
	factory :user do
		email {Faker::Internet.email}
		name {Faker::Name.name}
		password 'bobisbob'
	end
end