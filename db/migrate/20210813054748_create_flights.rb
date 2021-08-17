class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.integer :seats
      t.integer :pnr_number
      t.timestamps
    end
  end
end
