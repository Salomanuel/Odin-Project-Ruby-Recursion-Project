def rando(nums)
	arra = []
	nums.times { arra << rand(100) }
	return arra
end

def multi_array(numbers)
	numbers.collect! do |num|
		arra = Array.new
		arra.push num
	end
end

def merge_sort(numbers, ordered=[])
	puts "input: #{numbers.join(", ")}"
	
	return "ordered: #{ordered.join(", ")}" if numbers.length < 2


		a = numbers.shift
		b = numbers.shift

	if a[0] >= b[0]
	 	ordered << a
	 	numbers << b
	else
	 	ordered << b
	 	numbers << a
	end
	merge_sort(numbers, ordered)
end

puts merge_sort(multi_array(rando(10)))




