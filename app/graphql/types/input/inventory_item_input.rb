module Types 
  module Input
    class InventoryItemInput < Types::BaseInputObject
      description "Attributes for querying inventory item"
      argument :id, ID, "Identifier of inventory item"
    end
  end
end
