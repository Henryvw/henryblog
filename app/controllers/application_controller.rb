class ApplicationController < ActionController::Base
  protect_from_forgery


  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_admin_user!
    unless @current_user
      redirect_to new_session_url
      return false
    end
  end

  helper_method :current_user
end

