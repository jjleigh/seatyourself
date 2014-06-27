class AddPhoneNumber < ActiveRecord::Migration
  def change
  	add_column :restaurants, :number, :string
  end
end
