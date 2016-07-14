begin
require "names.rb"
load "age.rb"
rescue Exception=>e
	puts e
else
end
class Details
	def initialize name,age
		@age=age.to_i
		@name=name
	end
	def get_name
		return @name
	end
	def get_age
		return @age
	end
	begin
	include Name
	include Age
	rescue
		puts "Loading Error"
	else 
	end
end

a=Details.new(gets.chomp,gets.chomp)
system("clear")
puts a.name(a.get_name)
puts a.age(a.get_age)
