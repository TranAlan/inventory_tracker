class CreateTempInventoryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :temp_inventory_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
