class UserController < ApplicationController
	def new
		if(params[:accounts][:user_name].empty? || params[:accounts][:password].empty? || params[:accounts][:phone].empty? || params[:accounts][:email].empty?)
			flash[:notice] = "Enter Data!!!"
			redirect_to :action=>"create"
		else	
			Account.create(:user_name => params[:accounts][:user_name],:password =>params[:accounts][:password],:phone=>params[:accounts][:phone],:email=>params[:accounts][:email])
		end
	end
	
	def create
	end

	def login
	end

	def redirect
			redirect_to :action=>"login"
	end 

	def valid
	end

	def invalid
	end

	def submit
		if(params[:accounts][:user_name].empty? || params[:accounts][:password].empty?)
			flash[:notice] = "Enter Data!!!"
			redirect_to :action=>"login"
		else
			if Account.exists?(user_name: params[:accounts][:user_name])
				if Account.exists?(password: params[:accounts][:password])
					redirect_to :action=>'valid'
				else
					flash[:notice]="Password invalid"
					redirect_to :action=>"login"
				end
			else
				redirect_to :action=>'invalid'
			end
		end
	end
end