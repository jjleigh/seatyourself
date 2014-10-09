require 'faker'

FactoryGirl.define do
	factory :category do
		summary {Faker::Lorem.paragrapgh}
		cuisine {Faker::Name.name}
	end
end