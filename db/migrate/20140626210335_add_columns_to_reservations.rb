class AddColumnsToReservations < ActiveRecord::Migration
  def change
  	add_column :reservations, :time, :datetime
  	add_column :reservations, :date, :datetime
  	add_column :reservations,:group_size, :integer
  end
end
