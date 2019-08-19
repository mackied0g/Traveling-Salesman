class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.integer :destination_id
      t.integer :salesman_id
      t.integer :flight_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
