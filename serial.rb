def serial_average(no)
    no=no.split("-")
    avg=((no[1].to_f+no[2].to_f)/2)
    no[1]="%.2f" %avg
    return "#{no[0]}-#{no[1]}" 
end
puts "Enter serial(SSS-XX.XX-YY.YY):"
str=gets.chomp
puts serial_average(str)
