class RenamePasswordToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :salesmen, :password, :password_digest
  end
end
