# 5 ! = 5 × 4 × 3 × 2 × 1 = 120

def facto(n)
	return 1 if n <= 0
	(n * facto(n-1))
end
# 0.upto(10) { |i| puts facto(i) }
# puts facto(5)

def pali(word)
	return false if word[0] != word[-1]
	return true  if word.length <= 1
	pali(word[1..-2])
end
# puts pali("anna")
# puts pali("nonno")
# puts pali("itangabagnati")
# puts pali("rotor")
# puts pali("motor")
# puts pali("aurora")

# Define a recursive function that takes an 
# argument n and prints 
# "n bottles of beer on the wall", 
# "(n-1) bottles of beer on the wall", ..., 
# "no more bottles of beer on the wall".

def bottle(n)
	endphrase = "bottles of beer on the wall"
	return "no more #{endphrase}" if n == 0
	puts "#{n} #{endphrase}"
	bottle(n-1)
end
# puts bottle(4)

# Define a recursive function that takes an 
# argument n and returns the fibonacci value 
# of that position. The fibonacci sequence is 
# 0, 1, 1, 2, 3, 5, 8, 13, 21... 
# So fib(5) should return 5 and 
#    fib(6) should return 8

def fibo(n)
	return n if n <= 1
	return fibo(n-1) + fibo(n-2)
end

# puts fibo(4)
# puts fibo(5)
# puts fibo(6)

# Define a recursive function that flattens an 
# array. The method should convert 
# [[1, 2], [3, 4]] to [1, 2, 3, 4] and 
# [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

# Use the roman_mapping hash to define a 
# recursive method that converts an integer 
# to a Roman numeral.
def roman(num,string=[])
	return string.join if num == 0
	roman_mapping = {  1000 => "M",  900 => "CM",
  		 500 => "D",  400 => "CD", 100 => "C",
  		  90 => "XC",	 50 => "L",   40 => "XL",
				10 => "X",    9 => "IX",   5 => "V",
			   4 => "IV",	  1 => "I"								}
	roman_mapping.each do |key, value|
		if num >= key
			string << value
			num -= key
			break
		end
	end
	roman(num,string)
end
# puts roman(999)
# 0.upto(10) { |i| puts roman(i+10) }
# puts roman(20)
# puts roman(35)
# puts roman(38)
# puts roman(99)

def from_roman(string, num=0)
	return num if string == "" or string.class == NilClass
	roman_mapping = { "M"  => 1000, "CM" => 900,
			"D"  => 500,	"CD" => 400, 	"C"  => 100,
			"XC" => 90,		"L"  => 50,		"XL" => 40,
			"X"  => 10,		"IX" => 9,		"V"  => 5,
			"IV" => 4,		"I"  => 1		}
	roman_mapping.each do |key, value|
		if (string[0..1]) == key 
			num += value
			string = string[2..-1]
			break
		elsif string[0] == key
			num += value
			string = string [1..-1]
			break
		end
	end
	from_roman(string, num)
end
# puts from_roman("X")
# puts from_roman("III")
# puts from_roman("XVIII")
# puts from_roman("XXXVIII")
# puts from_roman("XXXV")
# puts from_roman("XCIX")
# puts from_roman("CMXCIX")
# puts from_roman("MDCCXLIX")




def flatta(arra)
	# puts arra.length
	return arra if arra.class == Fixnum
	a = flatta(arra[0])
	b = flatta(arra[1])
	# arra = [a,b]
end
# puts flatta([[1, 2], [3, 4]])
# puts flatta([[1, [8, 9]], [3, 4]])#[0][1].join(", ")
# puts ([[1, [8, 9]], [3, 4]])[0][1].join(", ")

