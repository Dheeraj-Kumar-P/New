# Your code here
def kel(temp,input)
    case input
    when 'celsius'
        return (temp+273.15)
    when 'fahrenheit'
        return  ((temp + 459.67) * 0.555555556)
    end
end

def cel(temp,input)
    case input
    when 'kelvin'
        return (temp-273.15)
    when 'fahrenheit'
        return ((temp-32)*0.555555556)
    end
end

def fahr(temp,input)
    case input
    when 'kelvin'
        return ((temp*1.8)-459.67)
    when 'celsius'
        return ((temp*1.8)+32 )
    end
end

def convert_temp(temp=0, input_scale ="celsius", output_scale ="celsius")
    if output_scale=='celsius'
        puts cel(temp,input_scale)
    elsif output_scale=='kelvin'
        puts kel(temp,input_scale)
    elsif output_scale=='fahrenheit'
        puts fahr(temp,input_scale) 
    else
        puts temp
    end
end
puts "Enter Temp: "
a=gets.to_f
puts "Enter input: "
b=gets.chomp
puts "Output(Y(Specify) /N(Celsius) ): "
c=gets.chomp
if c=='Y'
	puts "Enter output:"	
	c=gets.chomp
    convert_temp(a,b,c)
else
	convert_temp(a,b)
end


