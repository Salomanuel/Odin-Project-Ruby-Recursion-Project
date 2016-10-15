def pali(string)
	return "YES" if string.length <= 1
	string[0] == string[-1] ? pali(string[1..-2]) : (return "nope")
end

puts pali("rotor")
puts pali("motor")
puts pali("itangabagnati")
puts pali("tangenziale")
puts pali("anna")