class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.integer :seat
      t.string :seat_class
      t.string :pnr_number
      t.integer :total_amount
      t.timestamps
    end
  end
end
