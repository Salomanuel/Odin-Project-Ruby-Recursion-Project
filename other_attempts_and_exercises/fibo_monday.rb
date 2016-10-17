# return all the members till n
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

def fibs(n)
	return n if n <= 1
	return fibs(n-1) + fibs(n-2)
end

0.upto(10) { |i| puts fibs(i) }