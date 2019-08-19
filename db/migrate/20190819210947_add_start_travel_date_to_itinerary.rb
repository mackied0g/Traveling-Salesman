class AddStartTravelDateToItinerary < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :start-travel-date, :datetime
  end
end
