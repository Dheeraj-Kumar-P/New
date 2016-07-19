class AccountController < ApplicationController
	def new
		if(params[:books][:book_name].empty? || params[:books][:book_type].empty? || params[:books][:book_qty].empty? || params[:books][:bookprice].empty? || params[:authors]==nil)
			flash[:notice]="Empty Fields"
			redirect_to :action =>"create"
		else
			Book.create(:book_name => params[:books][:book_name],:book_type=>params[:books][:book_type],:book_qty=>params[:books][:book_qty],:bookprice=>params[:books][:bookprice],:author_id=>params[:authors][:id])
			redirect_to :action=> "show"	
		end
	end
	def new_ath
		if(params[:Author][:author_name].empty? || params[:Author][:author_age].empty? || params[:Author][:author_description].empty?)
			flash[:notice]="Empty Fields"
			redirect_to :action =>"create_ath"
		else
			Author.create(:author_name=> params[:Author][:author_name],:author_age=>params[:Author][:author_age],:author_description=>params[:Author][:author_description])
			redirect_to :action=> "show"	
		end
	end
	
	def show
		@books=Book.find_each
		@author=Author.find_each
	end
	def create 
		@author=Author.find_each
	end
	def create_ath
	end
	def edit
		@books=Book.find(params[:id])
		@author=Author.find_each
	end
	def update
		if(params[:books][:book_name].empty? || params[:books][:book_type].empty? || params[:books][:book_qty].empty? || params[:books][:bookprice].empty? || params[:authors]==nil)
			flash[:notice]="Empty Fields"
			redirect_to :action =>"edit", :id=>params[:id]
		else
			Book.update(params[:id],:book_name => params[:books][:book_name],:book_type=>params[:books][:book_type],:book_qty=>params[:books][:book_qty],:bookprice=>params[:books][:bookprice],:author_id=>params[:authors][:id])
			redirect_to :action=>"show"
		end
	end
	def delete
		Book.find(params[:id]).destroy
		redirect_to :action=> "show"	
	end
	def delete_ath	
		@books=Book.find_each
		@books.each do |book|
			if (book.author_id==params[:id].to_i)
				Book.find_by(author_id:params[:id]).destroy
			end
		end
		Author.find(params[:id]).destroy
		redirect_to :action=> "show"	
	end
end
 