class AddEndTravelDateToItinerary < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :end-travel-date, :datetime
  end
end
