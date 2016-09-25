def random_numbers(size,limit=100)
	arra = []
	size.times{ arra << rand(limit) }
	return arra
end

def merge_sort_old(numbers, sorted=[])
	return sorted if numbers.length < 2
	a = numbers.shift
	b = numbers.pop
	
	if a <= b
		sorted  << a
		numbers << b
	else
		sorted  << b
		numbers << a
	end
	sorted << numbers[0] if numbers.length < 2
	merge_sort(numbers,sorted)

end

def merge_sort(numbers, sorted=[])
	numbers.each_with_index do |j,i|
		numbers[0][i] << j
	end

	return numbers
end






#randi = random_numbers(10)
#puts randi.join(", ")
randi = [38,27,43,3,9,82,10]
puts merge_sort(randi)#.join(", ")