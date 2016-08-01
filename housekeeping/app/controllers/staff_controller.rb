class StaffController < ApplicationController
  before_filter :authorize
	def show
		@staff = User.find(params[:id])
		@shift_all = Shift.find_each
		time_now=Time.now.hour.to_i
		@shift_all.each do |shift|
			if(shift.start_time.hour.to_i<=time_now and time_now<shift.end_time.hour.to_i)
				time=shift.id
			end
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
