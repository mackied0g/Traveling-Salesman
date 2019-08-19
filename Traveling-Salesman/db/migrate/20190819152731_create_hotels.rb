class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.integer :destination_id
      t.integer :star_rating
      t.string :guest_rating
      t.boolean :is_available?

      t.timestamps
    end
  end
end
