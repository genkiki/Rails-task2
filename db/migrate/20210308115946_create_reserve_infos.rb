class CreateReserveInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :reserve_infos do |t|
      t.integer :user_id
      t.integer :hotel_id
      t.date :start_date
      t.date :end_date
      t.date :reserve_date
      t.integer :num_person

      t.timestamps
    end
  end
end
