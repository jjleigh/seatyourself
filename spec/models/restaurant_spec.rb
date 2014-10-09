require 'rails_helper'

describe Restaurant do 

	context "Before creation" do
		it "has a valid factory" do 
			restaurant_one = build(:restaurant)
			expect(restaurant_one).to be_valid
		end
	end 
		# validation tests
		# name tests

		it 'is invalid without a name' do
			expect(build(:restaurant, name: nil)).to_not be_valid
		end

		it 'is invalid without an email' do
			expect(FactoryGirl.build(:restaurant, email: nil)).to_not be_valid
		end

		it 'is invalid without a password' do
			expect(FactoryGirl.build(:restaurant, address: nil)).to_not be_valid
		end

		it 'is invalid without a number' do
			expect(FactoryGirl.build(:restaurant, number: nil)).to_not be_valid
		end

		it 'is invalid without a summary' do
			expect(FactoryGirl.build(:restaurant, summary: nil)).to_not be_valid
		end

		it 'is invalid without a price_range' do
			expect(FactoryGirl.build(:restaurant, price_range: nil)).to_not be_valid
		end

		it 'is invalid without a category' do
			expect(FactoryGirl.build(:restaurant, category_id: nil)).to_not be_valid
		end

		it 'is invalid without a capacity' do
			expect(FactoryGirl.build(:restaurant, capacity: nil)).to_not be_valid
		end

		it 'is invalid without a capacity less than 20' do
			expect(FactoryGirl.build(:restaurant, capacity: 0..19)).to_not be_valid
		end
	


	# association tests

	it "should have many users through reservations" do 
		expect(build(:restaurant)).to respond_to(:users)
	end

	it "should have many reservations" do 
		expect(build(:restaurant)).to respond_to(:reservations)
	end

	it "should have many reviews" do 
		expect(build(:restaurant)).to respond_to(:reviews)
	end

	it "should belong to a category" do 
		expect(build(:restaurant)).to respond_to(:category)
	end

	it "should belong to a user" do 
		expect(build(:restaurant)).to respond_to(:user)
	end





end