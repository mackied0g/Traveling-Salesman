class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :about_info
      t.float :average_daily_cost

      t.timestamps
    end
  end
end
