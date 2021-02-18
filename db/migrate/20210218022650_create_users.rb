class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :self_introduction
      t.string :image_icon
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
