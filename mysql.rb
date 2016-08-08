require 'mysql'
mysql=Mysql.new('localhost','root','password','demo')
a=mysql.query('select* from accounts')
a.each do |i|
	puts i[1],i[2]
end
