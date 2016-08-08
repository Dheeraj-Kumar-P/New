#Fibonocci
fib=Enumerator.new do |i|
	a=b=1
	loop do
		i<<a
		a,b=b,a+b
	end
end
print "Enter a no: "
n=gets.to_i

if(n>=1)
	p fib.take(n)
else
	p "Not possible"
end
