values=[1,'affa',65,'qfff',156,465,13,'ewf',9889,'fwfwcw','svvw']
 
while values.length>0
	a=values.pop
	b=values.pop

	begin 
		a+b
	rescue Exception=>e
		e.set_backtrace("Error")
		puts "Error: #{e}"
	else
		puts "\n a+b : #{a+b}"
	end
end
