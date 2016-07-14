def func1
	(1..3).each do
		print " #"
		sleep 0.5
	end
end
def func2
	(1..3).each do
		print " *"
		sleep 0.5
	end
end
def func3
	(1..3).each do
		print " /"
		sleep 0.5
	end
end
a=Thread.new{func1}
puts a.status
b=Thread.new{func2}
c=Thread.new{func3}
b.exit
a.join
b.join
c.join
puts a.stop?