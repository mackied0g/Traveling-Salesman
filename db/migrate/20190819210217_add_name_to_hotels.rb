class AddNameToHotels < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :name, :string
  end
end
