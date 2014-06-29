class ChageColumnNameInCategories < ActiveRecord::Migration
  def change
  	remove_column :categories, :name, :string

  	add_column :categories, :cuisine, :string
  end
end
