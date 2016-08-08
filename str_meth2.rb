# Enter your code here
def strike(str)
    "<strike>#{str}</strike>"
end
def mask_article(str1,str2)
    str2.each {|str| str1=str1.gsub("#{str}",strike(str))}
        return str1
end

puts mask_article("Hello World! This is crap!", ["crap"])
