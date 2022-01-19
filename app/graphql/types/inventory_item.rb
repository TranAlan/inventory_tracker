# app/graphql/types/inventory_item.rb
module Types
  class InventoryItem < Types::BaseObject
    description "An inventory item"
    field :id, ID, null: false
    field :name, String, null: false
    field :brand, String, null: false
    field :stock_number, Int, null: false
  end
end