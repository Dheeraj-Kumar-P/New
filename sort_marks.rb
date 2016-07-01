a={'d': "47",'z': "35",'g': "60",'v' : "73",'c' : "58",'a' : "79",'b' : "87"}
a=a.sort_by{|key,val| key}
a=a.select{|key,val| val<90}.group_by{|key,value| (value>=60)?"Passed":"Failed"}
a["Passed"]=a["Passed"].sort_by{|name,val| val}
a["Failed"]=a["Failed"].sort_by{|name,val| val}
p a
puts "Highest Mark(Passed): #{a["Passed"][(a["Passed"].length)-1]}"
puts "Lowest Mark(Failed): #{a["Failed"][0]}"

