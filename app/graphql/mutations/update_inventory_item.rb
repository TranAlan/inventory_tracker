module Mutations
  class UpdateInventoryItem < BaseMutation
    field :inventory_item, ::Types::InventoryItem, null: false

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :brand, String, required: false
    argument :stock_number, Int, required: false

    def resolve(id:, name: nil, brand: nil, stock_number: nil)
      inventory_item = ::InventoryItem.find(id)
      attributes = {
        name: name,
        brand: brand,
        stock_number: stock_number,
      }
      ::InventoryItemService.update_inventory_item(id, attributes.compact)
      {
        inventory_item: inventory_item,
      }
    end
  end
end
