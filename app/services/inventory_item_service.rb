class InventoryItemService
  class << self
    def create_inventory_item(attributes)
      ::InventoryItem.create!(attributes)
    end

    def update_inventory_item(id, attributes)
      inventory_item = ::InventoryItem.find(id)
      ::InventoryItem.update!(attributes)
    end

    def delete_inventory_item(id)
      inventory_item = ::InventoryItem.find(id)
      inventory_item.destroy
    end

    def fetch_inventory_item(id)
      ::InventoryItem.find(id)
    end

    # Due to time constraints. Note this should be done with pagination.
    def fetch_inventory_items
      ::InventoryItem.all
    end
  end
end