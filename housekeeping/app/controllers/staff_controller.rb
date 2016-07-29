class StaffController < ApplicationController
	before_filter :authorize  
	def show
		@staff=User.find(params[:id])
		time=Time.now.hour.to_i
		if(0<=time and time<8)
			time=1
		elsif(8<=time and time<16)
			time=2
		else
			time=3
		end
		@maids=User.where(hotel_id: @staff.hotel_id,shift_id: time).find_each
		@tasks=TaskAssignment.where(status: "assigned").find_each
		@rooms1=Room.where(hotel_id: @staff.hotel_id).find_each
		room=[]
		@rooms1.each do |room1|
			room.push(room1.id)
		end
		@tasks.each do |task|
			room.delete(task.room_id)
		end
		@rooms=Room.where(status: "dirty",hotel_id: @staff.hotel_id,id: room).find_each
	end
end
 