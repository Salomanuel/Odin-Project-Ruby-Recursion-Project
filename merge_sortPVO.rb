def merge_sort(m)
	return m if m.length <= 1
	
	middle = m.length / 2
	left   = merge_sort(m[0...middle])
	right  = merge_sort(m[middle..-1])
	merge(left, right)		# LAST ORIGINAL LINE
	# puts "#{left}**#{right}"
end

def merge(left, right)
	result = []
	until left.empty? or right.empty?
		result << (left.first <= right.first ? left.shift : right.shift)
	end
	result + left + right
end

def randi(qty, range=100)
	list = []
	qty.times { list << rand(range) }
	return list
end

# puts merge_sort([43,24,11,33,31]).join(", ")
puts merge_sort(randi(20)).join(", ")
# puts randi(10)