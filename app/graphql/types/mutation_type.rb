module Types
  class MutationType < Types::BaseObject
    field :create_inventory_item, mutation: Mutations::CreateInventoryItem
    field :update_inventory_item, mutation: Mutations::UpdateInventoryItem
    field :delete_inventory_item, mutation: Mutations::DeleteInventoryItem
  end
end
