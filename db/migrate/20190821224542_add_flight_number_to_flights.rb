class AddFlightNumberToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :flight_number, :string
  end
end
