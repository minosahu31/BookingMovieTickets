class CreateAvailableSeats < ActiveRecord::Migration
  def change
    create_table :available_seats do |t|
      t.string :s_no
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
