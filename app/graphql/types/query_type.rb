module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :inventory_item, ::Types::InventoryItem, null: false,
      description: "Find a inventory item by ID" do
        argument :id, ID
      end
      
    def inventory_item(id:)
      ::InventoryItem.find(id)
    end

    field :inventory_items, [::Types::InventoryItem], null: false
    def inventory_items()
      ::InventoryItem.all
    end
  end
end
