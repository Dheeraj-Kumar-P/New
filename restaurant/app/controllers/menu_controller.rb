class MenuController < ApplicationController
	def home
		@orders=Order.find_each
	end
	def new
		Order.create(:order=>params[:orders][:order],:time=>params[:orders][:time])
		redirect_to :action=> 'home'
	end
	def new_customer
		Customer.create(:name=>params[:customers][:name],:phone_no=>params[:customers][:phone_no])
		@orders=Order.find_each
	end
	def create
	end
	def order
		@customer=Customer.last
		length=params.keys.length-6
		(0...length).each do |iteration|
			List.create(:customer_id=>params[:id],:order_id=>params[params.keys[iteration+2]])
		end
		redirect_to :action=> 'home'
	end
	def show
		@customers=Customer.joins(:orders).find_each
	end
	def create_customer
	end
end