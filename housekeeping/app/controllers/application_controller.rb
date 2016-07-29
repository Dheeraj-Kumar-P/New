class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  def authorize
  	if(session[:user_id] == nil)
  		redirect_to :controller=>'login',:action=>'login'
  	end
  end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
