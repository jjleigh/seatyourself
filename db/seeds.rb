# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create(cuisine:"African",summary:"awesome African food!")
Category.create(cuisine:"vegetarian",summary:"awesome Vegetarian food!")
Category.create(cuisine:"Asian",summary:"awesome Asian food!")
Category.create(cuisine:"Caribbean",summary:"awesome Caribbean food!")
Category.create(cuisine:"European",summary:"awesome European food!")
Category.create(cuisine:"South American",summary:"awesome South American food!")
Category.create(cuisine:"Other",summary:"fusion food!")
