class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:home]
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    premium_path
  end
end
