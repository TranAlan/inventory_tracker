class CreateInventoryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.string :brand
      t.integer :stock_number

      t.timestamps
    end
  end
end
