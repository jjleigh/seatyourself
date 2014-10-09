require 'rails_helper'


describe Category do 

	context "Before creation" do
		it "has a valid factory" do 
			user_one = build(:category)
			expect(user_one).to be_valid
		end 
		# validation tests

		it 'is invalid without a cuisine' do
			expect(build(:category, cuisine: nil)).to_not be_valid
		end


		it 'is invalid without a summary' do
			expect(FactoryGirl.build(:category, summary: nil)).to_not be_valid
		end
	
	end

	# association tests

	it "should have many pictures" do 
		expect(build(:category)).to respond_to(:restaurants)
	end


end