require 'faker'

FactoryGirl.define do
	factory :category do
		summary {Faker::Lorem.paragraph}
		cuisine {Faker::Name.name}
	end
end