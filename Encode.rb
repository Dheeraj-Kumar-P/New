def transcode(str)
    str=str.encode(Encoding::UTF_8)
    return str
end
print "Enter a String:"
str=gets.chomp.encode(Encoding::ISO_8859_1)

puts str.encoding.name
str=transcode(str)
puts str.encoding.name
