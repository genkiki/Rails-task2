class AddPriceToReserveInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :reserve_infos, :price, :integer
  end
end
