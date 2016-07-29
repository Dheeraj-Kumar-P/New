class UserNotifierMailer < ApplicationMailer
	default :from => 'dheeraj@qburst.com'
	def shift_email
		require 'date'
		time=Time.now.hour.to_i
		if(0<=time and time<8)
			time=1
		elsif(8<=time and time<16)
			time=2
		else
			time=3
		end
		@shift_id=time
		@shift=User.where(roles_id: [2,3],shift_id: time).find_each
		@room_cleaned=TaskAssignment.where(date: Date.today,status: "done").find_each
		@work=TaskAssignment.where(status: "assigned").find_each
	    @user = User.where(role_id: 1)
	    mail( :to => @user.email,:subject => 'Shift Status' )
    end
end
 