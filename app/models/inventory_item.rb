require "csv"

class InventoryItem < ApplicationRecord
    class << self

        def to_csv
            attributes = %w(id name brand stock_number)
            CSV.generate(headers:true) do |csv|
                csv << attributes
                ::InventoryItem.all.each do |inventory_item|
                    csv << inventory_item.attributes.slice(*attributes)
                end
            end
        end
    end
end
