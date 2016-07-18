class AccountController < ApplicationController
	def new
		if(params[:books][:book_name].empty? || params[:books][:book_id].empty? || params[:books][:book_type].empty? || params[:books][:book_qty].empty? || params[:books][:bookprice].empty?)
			flash[:notice]="Empty Fields"
			redirect_to :action =>"create"
		else
			Book.create(:book_name => params[:books][:book_name],:book_id =>params[:books][:book_id],:book_type=>params[:books][:book_type],:book_qty=>params[:books][:book_qty],:bookprice=>params[:books][:bookprice])
		end
	end
	def redirect
		redirect_to :action=> "homepage"
	end
	def homepage
	end
	def show
		@books=Book.find_each
	end
	def create 
	end
	def edit
		@books=Book.find(params[:id])
	end
	def update
		if(params[:books][:book_name].empty? || params[:books][:book_id].empty? || params[:books][:book_type].empty? || params[:books][:book_qty].empty? || params[:books][:bookprice].empty?)
			flash[:notice]="Empty Fields"
			redirect_to :action =>"edit", :id=>params[:id]
		else
			Book.update(params[:id],:book_name => params[:books][:book_name],:book_id =>params[:books][:book_id],:book_type=>params[:books][:book_type],:book_qty=>params[:books][:book_qty],:bookprice=>params[:books][:bookprice])
			@books=Book.find(params[:id])
		end
	end
	def delete
		@books=Book.find(params[:id])
		Book.find(params[:id]).destroy
	end
end
 