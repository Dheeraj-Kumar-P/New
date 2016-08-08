def area(a)
	if a.length==1
		return a[0]*a[0]
	elsif a.length==2
		return a.reduce(:*)
	end
end
a=gets.split(' ').map(&:to_i)
puts area(a)

