f=File.new("README.md","r")
f.each do |i|
	print "#{i} "
end
f.close