class AddStoreLocationIdToGuitars < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :store_location_id, :integer
  end
end
