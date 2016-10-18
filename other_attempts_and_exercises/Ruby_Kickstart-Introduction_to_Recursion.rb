def append(ary, n)
	ary << n
	return ary.join(",") if n == 0
	append(ary, n-1)
end

# puts append([],2) # => 	 [2,1,0]
# puts append([],2)
# puts append([],3) # => [3,2,1,0]

def reverse_append(ary, n)
	return ary if n < 0
	reverse_append(ary,n-1)
	ary << n
end

# puts reverse_append([], -1) # => []
# puts reverse_append([],  0).join(",")	# => 
# puts reverse_append([],  1).join(",") # => [0, 1]
# puts reverse_append([],  2).join(",") # => [0, 1, 2]

