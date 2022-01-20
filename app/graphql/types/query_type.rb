module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :inventory_item, ::Types::InventoryItem, null: false,
      description: "Find a inventory item by ID" do
        argument :id, ID
      end
      
    def inventory_item(id:)
      ::InventoryItemService.fetch_inventory_item(id)
    end

    field :inventory_items, [::Types::InventoryItem], null: false
    def inventory_items()
      ::InventoryItemService.fetch_inventory_items()
    end
  end
end
