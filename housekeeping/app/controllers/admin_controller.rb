class AdminController < ApplicationController
	before_filter :authorize  
	def show
		@hotels=Hotel.find_each 
	end
end