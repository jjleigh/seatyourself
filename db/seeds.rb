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
		:image => "http://media-cache-cd0.pinimg.com/736x/a4/b1/37/a4b137c9578d357f44e70503915bd16a.jpg",
		:summary => "Find awesome African cuisine restuarants in your area, we have many to choose from. Do you love Jollof rice? have some Nigerian. Ever tried Ethiopian? if not check them out.",
		:id => 1
		)

	Category.create!(
		:cuisine => "Asian",
		:image => "http://media-cache-ec0.pinimg.com/736x/63/fb/78/63fb78258c2eb846a3f28baee2d5f8f2.jpg",
		:summary => "Find awesome Asian cuisine restuarants in your area, we have many to choose from. We have Indian, Chinese, Japanese, Thai, Korean. You name it we have it.",
		:id => 2
		)
	Category.create!(
		:cuisine => "Caribbean",
		:image => "http://media-cache-ec0.pinimg.com/736x/29/12/31/291231e6746048af5514a67f2c48f625.jpg",
		:summary => "Find awesome Carribbean cuisine restuarants in your area, we have many to choose from. Come taste the flavours of the islands and try Jamaican, Trinidadian or Cuban.",
		:id => 3
		)
	Category.create!(
		:cuisine => "European",
		:image => "http://media-cache-ak0.pinimg.com/736x/0f/28/7c/0f287c901e3cf8206a997eb5c34bb8a6.jpg",
		:summary => "Find awesome European cuisine restuarants in your area, we have many to choose from. Do you love Gyros? then try Greek, Everybody loves pasta and pizza, so try Italian, Want to try Paella? go for Spanish.",
		:id => 4
		)
	Category.create!(
		:cuisine => "Middle Eastern",
		:image => "http://media-cache-ak0.pinimg.com/736x/62/6e/77/626e77c8f6a29a8c1eeadd95e3ec418e.jpg",
		:summary => "Find awesome Middle Eastern cuisine restuarants in your area, we have many to choose from. Every tried Dolma? if not how about Turkish, we have Lebanese, Persian and many more too.",
		:id => 5
		)
	Category.create!(
		:cuisine => "South American",
		:image => "http://media-cache-ec0.pinimg.com/736x/a9/7d/e8/a97de8dddb358104b02a00b32e8c3d78.jpg",
		:summary => "Find awesome South american restuarants in your area, we have many to choose from. Try Mexican and have a burrito, Try Colombian and have a tasty empanada or go for Brazilian tonight and we have more. ",
		:id => 6
		)
	Category.create!(
		:cuisine => "Vegetarian",
		:image => "http://media-cache-ak0.pinimg.com/736x/de/e2/50/dee25014c416815b0d77178a81d16825.jpg",
		:summary => "Find awesome Vegetarian, Vegan and Raw food restuarants in your area, we have many to choose from. Love your veggies? Then we have the places for you!",
		:id => 7
		)
	Category.create!(
		:cuisine => "Others",
		:image => "http://media-cache-ak0.pinimg.com/736x/7b/d4/61/7bd46141695a81fff6ab6d77eb091439.jpg",
		:summary => "Find awesome Cafe's, Bistros, Coffee shops and fusion cuisine restaurants in your area, we have many to choose from. Need a coffe break? Well, look no further!",
		:id => 8
		)
	Category.create!(
		:cuisine => "Dessert café",
		:image => "http://media-cache-ak0.pinimg.com/736x/a4/0f/b4/a40fb408091eb4dbac299cd8fb9f3509.jpg",
		:summary => "Find awesome Dessert cafe's in your area, we have many to choose from. Having a sweet craving, we do too...chekout our list of dessert shops",
		:id => 9
		)