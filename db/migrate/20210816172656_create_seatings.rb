class CreateSeatings < ActiveRecord::Migration[6.1]
  def change
    create_table :seatings do |t|
      t.string :name
      t.integer :seats
      t.integer :number_of_rows
      t.integer :row_seats
      t.integer :seat_price
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
