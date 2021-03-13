class ChangeDatatypeImgOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :img, :string
  end
end
