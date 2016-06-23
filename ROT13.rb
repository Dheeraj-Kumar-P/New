def rot13(str)
  # your code here
    str=str.tr("a-mn-z","n-za-m")  
    str=str.tr("A-MN-Z","N-ZA-M")
    return str
end
a=gets.chomp
puts rot13(a)
