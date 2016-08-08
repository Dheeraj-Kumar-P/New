module Encryption
	def rot13(str)
	    str=str.tr("a-mn-z","n-za-m")  
	    str=str.tr("A-MN-Z","N-ZA-M")
	    str=str.tr("0-9","9876543210")
    return str
	end
	def decrypt(str)
	    str=str.tr("a-mn-z","n-za-m")  
	    str=str.tr("A-MN-Z","N-ZA-M")
	    str=str.tr("9876543210","0-9")
    return str
	end
end