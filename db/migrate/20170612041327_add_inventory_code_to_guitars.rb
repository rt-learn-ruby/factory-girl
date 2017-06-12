class AddInventoryCodeToGuitars < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :inventory_code, :string
  end
end
