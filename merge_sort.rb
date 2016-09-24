def random_numbers(size,limit=100)
	arra = []
	size.times{ arra << rand(limit) }
	return arra
end





puts random_numbers(10).join(", ")