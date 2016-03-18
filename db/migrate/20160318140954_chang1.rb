class Chang1 < ActiveRecord::Migration
  def change
  	rename_column :seat_availability_times,  :time_id, :timing_id 
  end
end
