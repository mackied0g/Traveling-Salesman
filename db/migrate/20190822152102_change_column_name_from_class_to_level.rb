class ChangeColumnNameFromClassToLevel < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :class, :level
  end
end
