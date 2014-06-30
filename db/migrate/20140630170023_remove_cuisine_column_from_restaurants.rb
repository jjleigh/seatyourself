class RemoveCuisineColumnFromRestaurants < ActiveRecord::Migration
  def change
  	remove_column :restaurants, :cuisine, :string
  end
end
