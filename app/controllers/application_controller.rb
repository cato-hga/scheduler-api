class ApplicationController < ActionController::Base
  # FOR APIs, YOU MAY WANT TO USE :null_session instead
  protect_from_forgery with: :null_session

end
