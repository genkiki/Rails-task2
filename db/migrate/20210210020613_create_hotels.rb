class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.text :name
      t.text :place
      t.integer :price
      t.text :discription
      t.text :image_icon

      t.timestamps
    end
  end
end
