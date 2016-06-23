print "Enter a number:"
num=gets.to_i
flag=0
for iteration in (2..(num/2))
	if num%iteration==0
		flag=1
		break
	end
end
if flag==0
	puts "Prime"
else
	puts "Not prime"
end

