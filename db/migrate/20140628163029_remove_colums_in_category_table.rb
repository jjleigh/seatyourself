class RemoveColumsInCategoryTable < ActiveRecord::Migration
  def change
  	remove_column :categories, :asian, :string
  	remove_column :categories, :african, :string
  	remove_column :categories, :caribbean, :string
  	remove_column :categories, :european, :string
  	remove_column :categories, :middle_eastern, :string
  	remove_column :categories, :south_american, :string
  	remove_column :categories, :western, :string
  	remove_column :categories, :veg, :string

  	add_column :categories, :name, :string
  	add_column :categories, :summary, :string
  end
end
