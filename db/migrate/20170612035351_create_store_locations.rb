class CreateStoreLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :store_locations do |t|
      t.string :address

      t.timestamps
    end
  end
end
