class UsersController < ApplicationController
	before_filter :authorize  
	def new
	end
	def create
		#salary create
		#confirm password
		if (params[:users][:name].empty? || params[:users][:password].empty? || params[:password][:password].empty? || params[:users][:email].empty? || params[:users][:phone_no])
		 	flash[:notice] = "Enter Data!!!"
		 	redirect_to :action=>"new"
		elsif(params[:users][:password]!=params[:password][:password])
			flash[:notice] = "Password fiels does not match!!!"
		 	redirect_to :action=>"new"
		else
			User.create(:name=>params[:users][:name],:password=>params[:users][:password],:email=>params[:users][:email],:phone_no=>params[:users][:phone_no])
			Salaray.create(:user_id=>User.last.id)
			redirect_to :controller=>'hotels', :action=>'show', :id=> params[:id]
		end
	end
end
