class AdminController < ApplicationController
	before_filter :authorize  
	def show
		@hotels=Hotel.find_each 
		# length=params.keys.length-4
		# (2...length).each do |iteration|
		# 	User.update(params.keys[iteration],:is_active=>"0")
		# end
	end
end