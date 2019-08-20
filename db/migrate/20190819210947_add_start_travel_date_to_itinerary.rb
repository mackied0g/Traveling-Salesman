class AddStartTravelDateToItinerary < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :starttraveldate, :datetime
  end
end
