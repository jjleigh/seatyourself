class CreateRestaurant < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string  :name
    	t.string  :email
    	t.string  :address
    	t.integer :capacity
    	t.text    :summary

      t.timestamps
    end
  end
end
