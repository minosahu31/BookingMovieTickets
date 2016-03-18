class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :show_timings_id
      t.integer :customer_id
      t.integer :movie_theater_id
      t.integer :no_of_seats

      t.timestamps null: false
    end
  end
end
