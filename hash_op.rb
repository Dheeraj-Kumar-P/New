def convert_i(n)	#To convert any integer in string to integer
	temp=n
	n=n.to_i if temp.to_i!=0
	return n
end

hash={}		#Created Hash
puts "Enter keys" #Enter Keys
key=gets.chomp
key=key.split(' ')	
puts "Enter Values"   #Enter Values
value=gets.chomp
value=value.split(' ')

index=0
key.each do |ki|
	value[index]=convert_i(value[index])
	ki=convert_i(ki)
	hash[ki]=value[index]	#Put all the key value pair to hash created
	index+=1
end

hash.default=nil	#Setting default 
puts "Hash : #{hash}"

puts "Enter key to get Value:"	#Find
key=gets.chomp
key=convert_i(key)
if hash.assoc(key)
	puts "#{hash.assoc(key)}"
else
	puts "No Value found"
end
puts "List of elements in Hash"
print "#{hash.flatten} "
