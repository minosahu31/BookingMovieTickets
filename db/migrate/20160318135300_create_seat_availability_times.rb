class CreateSeatAvailabilityTimes < ActiveRecord::Migration
  def change
    create_table :seat_availability_times do |t|
      t.integer :time_id
      t.integer :seat_available_id

      t.timestamps null: false
    end
  end
end
