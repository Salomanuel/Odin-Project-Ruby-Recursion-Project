# return all the members till n
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

def fibs(n)
	return n if n <= 1
	return fibs(n-1) + fibs(n-2)
end

# 0.upto(10) { |i| puts fibs(i) }

def i_fibs(n)
	list = [0,1]
	list << list[-2] + list[-1] while list.length < n
	return list
end

puts i_fibs(10).join(", ")
