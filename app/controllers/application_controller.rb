class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    unless ['hungryzi','sillylogger','flngn'].include?(session[:user_handle])
      redirect_to '/auth/twitter' and return
    end
  end

  def current_admin_user
    session[:user_handle]
  end
end
