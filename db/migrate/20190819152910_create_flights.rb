class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :destination_id
      t.datetime :flight_date
      t.float :price
      t.string :flight_class

      t.timestamps
    end
  end
end
