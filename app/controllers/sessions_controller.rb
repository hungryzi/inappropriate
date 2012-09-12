class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    if ['hungryzi','sillylogger','flngn'].include?(auth["info"]["nickname"])
      session[:user_handle] = auth["info"]["nickname"]
    end
    redirect_to root_path
  end

  def destroy
    session.delete :user_handle
    redirect_to root_path
  end
end
