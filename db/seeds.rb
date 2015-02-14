# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all


Category.create!(
		:cuisine => "African",
		:image => "african-sy.jpg",
		:summary => "Find awesome African cuisine restaurants in your area, we have many to choose from. Do you love Jollof rice? have some Nigerian. Ever tried Ethiopian? if not check them out.",
		:id => 1
		)

	Category.create!(
		:cuisine => "Asian",
		:image => "asian-sy.jpg",
		:summary => "Find awesome Asian cuisine restaurants in your area, we have many to choose from. We have Indian, Chinese, Japanese, Thai, Korean. You name it we have it.",
		:id => 2
		)
	Category.create!(
		:cuisine => "Caribbean",
		:image => "caribbean-sy.jpg",
		:summary => "Find awesome Carribbean cuisine restaurants in your area, we have many to choose from. Come taste the flavours of the islands and try Jamaican, Trinidadian or Cuban.",
		:id => 3
		)
	Category.create!(
		:cuisine => "European",
		:image => "european-sy.jpg",
		:summary => "Find awesome European cuisine restaurants in your area, we have many to choose from. Do you love Gyros? then try Greek, Everybody loves pasta and pizza, so try Italian, Want to try Paella? go for Spanish.",
		:id => 4
		)
	Category.create!(
		:cuisine => "Middle Eastern",
		:image => "middleeast-sy.jpg",
		:summary => "Find awesome Middle Eastern cuisine restaurants in your area, we have many to choose from. Every tried Dolma? if not how about Turkish, we have Lebanese, Persian and many more too.",
		:id => 5
		)
	Category.create!(
		:cuisine => "South American",
		:image => "southamer-sy.jpg",
		:summary => "Find awesome South american restaurants in your area, we have many to choose from. Try Mexican and have a burrito, Try Colombian and have a tasty empanada or go for Brazilian tonight and we have more. ",
		:id => 6
		)
	Category.create!(
		:cuisine => "Vegetarian",
		:image => "veg-sy.jpg",
		:summary => "Find awesome Vegetarian, Vegan and Raw food restaurants in your area, we have many to choose from. Love your veggies? Then we have the places for you!",
		:id => 7
		)
	Category.create!(
		:cuisine => "Other",
		:image => "fusion-sy.jpg",
		:summary => "Find awesome Cafe's, Bistros, Coffee shops and fusion cuisine restaurants in your area, we have many to choose from. Need a coffe break? Well, look no further!",
		:id => 8
		)
	Category.create!(
		:cuisine => "Dessert",
		:image => "dessert-sy.jpg",
		:summary => "Find awesome Dessert cafe's in your area, we have many to choose from. Having a sweet craving, we do too...checkout our list of dessert shops",
		:id => 9
		)