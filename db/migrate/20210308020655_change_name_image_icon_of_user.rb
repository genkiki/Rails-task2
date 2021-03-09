class ChangeNameImageIconOfUser < ActiveRecord::Migration[5.2]
  def change
    change_column :user, :image_icon, :img
  end
end
