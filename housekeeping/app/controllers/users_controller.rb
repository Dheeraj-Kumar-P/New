# User controller
class UsersController < ApplicationController
  before_filter :authorize

  def new
  end

  def create
    byebug
    if (params[:users][:name].empty? || params[:users][:password].empty? || params[:password][:password].empty? || params[:users][:email].empty? || params[:users][:phone_no].empty?)
      flash[:notice] = 'Enter Data!!!'
      redirect_to :action => 'new', :id => params[:id]
    elsif params[:users][:password] != params[:password][:password]
      flash[:notice] = 'Password fiels does not match!!!'
      redirect_to :action => 'new', :id => params[:id]
    else
			User.create(:name => params[:users][:name],:password => params[:users][:password],:email => params[:users][:email],:phone_no => params[:users][:phone_no],:is_active => 1,:hotel_id => params[:id],:role_id => params[:roles][:id])
			Salary.create(:user_id => User.last.id)
			redirect_to :controller => 'hotels', :action => 'show', :id => params[:id]
		end
  end
end
