module Mutations
  class CreateInventoryItem < BaseMutation
    field :inventory_item, ::Types::InventoryItem, null: false

    argument :name, String, required: true
    argument :brand, String, required: true
    argument :stock_number, Int, required: true

    def resolve(name:, brand:, stock_number:)
      inventory_item = ::InventoryItemService.create_inventory_item(
        name: name,
        brand: brand,
        stock_number: stock_number,
      )
      {
        inventory_item: inventory_item,
      }
    end
  end
end
