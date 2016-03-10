class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @user ||= User.find session[:user_id] if session[:user_id]
  end

  def authorize_user!
    redirect_to new_admin_session_path unless current_user.present?
  end

  def login user
    session[:user_id] = user.id
  end

  def logged_in?
    !!current_user
  end

end
