class AddUserToFlights < ActiveRecord::Migration[6.1]
   def change
   create_table :flights_users, id: false do |t|
     t.references :user, index: true, foreign_key: true
     t.references :flight, index: true, foreign_key: true
   end
 end
end
