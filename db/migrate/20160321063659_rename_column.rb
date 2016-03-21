class RenameColumn < ActiveRecord::Migration
  def change
  	 rename_column :seat_availability_times,  :seat_available_id, :available_seat_id 
  end
end
