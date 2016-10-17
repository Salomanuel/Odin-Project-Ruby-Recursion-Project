# return all the members till n
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

def fibs(n)								# RECURSIVE FIBONACCI
	return n if n <= 1
	return fibs(n-1) + fibs(n-2)
end
# 0.upto(10) { |i| puts fibs(i) }

def i_fibs(n)							# ITERATIVE FIBONACCI
	list = [0,1]
	list << list[-2] + list[-1] while list.length < n
	return list
end
# puts i_fibs(10).join(", ")

def fibs_list(n,list=[])	# FIBONACCI LIST (recursive)
	return list if list.length >= n
	fibs_list(n-1, list)
	list << fibs(n-1)
end

puts fibs_list(10).join(", ")