class Name
	attr_accessor:name
	attr_accessor:id_no
	attr_accessor:age
	def Name::id
		@@id=5213
	end	
 def initialize 
 	print "Enter Name: "
 	@name=gets
 	print "Enter ID No: "
 	@id_no=gets
 	print "Enter Age: "
 	@age=gets
 end
end
class Student < Name
	attr_accessor:school
 def initialize 
 	super
 	print "Enter school name:"
 	@school=gets
 end
 def display
 system("clear")
 puts "Name: #{@name}" 
 puts "ID No: #{@id_no}"
 puts "Age: #{@age}" 
 puts "School: #{@school}" 
 puts defined? display
 end
end
a=Student.new
a.display
Name.id =13156
puts Name.id