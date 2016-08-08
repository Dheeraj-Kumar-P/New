def process_text(str)
    i=0
    str.each do 
        str[i]=str[i].strip   
        i=i+1     
    end
    return str.join().chomp
end
str=["Hi, \n", " Are you having fun?    "]
puts process_text(str)