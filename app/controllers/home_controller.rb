class HomeController < ActionController::Base
  protect_from_forgery with: :null_session
  def index
  end
end
