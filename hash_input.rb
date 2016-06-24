hash={}
key=[]
key=gets.chomp
key=key.split(' ')
value=[]
value=gets.chomp
value=value.split(' ')
index=0
key.each do |ki|
val=value[index]
value[index]=value[index].to_i if val.to_i!=0
k=ki
ki=ki.to_i if k.to_i!=0
hash[ki]=value[index]
index+=1
end
print hash

