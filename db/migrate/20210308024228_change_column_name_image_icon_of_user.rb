class ChangeColumnNameImageIconOfUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image_icon, :img
  end
end
