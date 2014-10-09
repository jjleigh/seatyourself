require 'rails_helper'

describe Reservation do 

		# validation tests

		# it 'is invalid without a time' do
		# 	expect(build(:reservation, time: nil)).to_not be_valid
		# end
		# it 'is invalid without a date' do
		# 	expect(build(:reservation, date: nil)).to_not be_valid
		# end
		# it 'is invalid without a group size' do
		# 	expect(FactoryGirl.build(:reservation, group_size: nil)).to_not be_valid
		# end
	

	# association tests

	it "should belong to a user" do 
		expect(build(:reservation)).to respond_to(:user)
	end

	it "should belong to a restaurant" do 
		expect(build(:reservation)).to respond_to(:restaurant)
	end


	# have secure password test


end