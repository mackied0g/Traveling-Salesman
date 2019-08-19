class CreateSalesmen < ActiveRecord::Migration[5.2]
  def change
    create_table :salesmen do |t|
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
