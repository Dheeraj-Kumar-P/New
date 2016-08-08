print "Number: "
n=gets.to_i
p (1..n).group_by{|i| i%2==0?"Even":"Odd"}
