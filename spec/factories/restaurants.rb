require 'faker'

FactoryGirl.define do
	factory :restaurant do
		capacity {Faker::Number.number(2)}
		email {Faker::Internet.email}
		address {Faker::Address.street_address}
		number {Faker::Number.number(10)}
		summary {Faker::Lorem.sentence}
		name {Faker::Name.name}
		price_range "high"
		category_id 1
	end
end