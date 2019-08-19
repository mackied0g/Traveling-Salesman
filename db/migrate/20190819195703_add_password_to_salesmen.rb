class AddPasswordToSalesmen < ActiveRecord::Migration[5.2]
  def change
    add_column :salesmen, :password, :string
  end
end
