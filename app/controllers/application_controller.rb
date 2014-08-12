class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout 'active_admin_logged_out'

  def after_sign_in_path_for(resource)
    gadgets_path
  end
end
