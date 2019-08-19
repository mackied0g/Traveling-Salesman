class AddEmailToSalesmen < ActiveRecord::Migration[5.2]
  def change
    add_column :salesmen, :email, :string
  end
end
