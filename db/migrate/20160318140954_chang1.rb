class Chang1 < ActiveRecord::Migration
  def change
  	rename_column :seat_availability_time,  :time_id, :timing_id 
  end
end
