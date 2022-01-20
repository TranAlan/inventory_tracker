class ExportCsvController < ActionController::Base
  protect_from_forgery with: :null_session

  def index
      respond_to do |format|
          format.html
          format.csv { send_data(::InventoryItem.to_csv, filename: "inventoryItems.csv") }
      end
  end
end
