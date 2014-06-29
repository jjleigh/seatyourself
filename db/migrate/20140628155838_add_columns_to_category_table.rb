class AddColumnsToCategoryTable < ActiveRecord::Migration
  def change
  	add_column :categories, :asian, :string
  	add_column :categories, :african, :string
  	add_column :categories, :caribbean, :string
  	add_column :categories, :european, :string
  	add_column :categories, :middle_eastern, :string
  	add_column :categories, :south_american, :string
  	add_column :categories, :western, :string
  	add_column :categories, :veg, :string
  end
end
