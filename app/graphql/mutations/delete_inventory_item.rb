module Mutations
  class DeleteInventoryItem < BaseMutation
    field :success, Boolean, null: false

    argument :id, ID, required: true

    def resolve(id:)
      destroy = ::InventoryItemService.delete_inventory_item(id)
      if destroy
        {
          success: true,
        }
      else
        {
          success: false,
        }
      end 
    end
  end
end
