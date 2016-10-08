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
	c = []

	puts "a: #{a.join("*")}"
	puts "b: #{b.join("*")}"

	while a.length > 1 and b.length > 0 do
		if a[0] <= b[0]
			c << a[0]
			a.shift
		else
			c << b[0]
			b.shift
		end
	end
	b.each{|j| c << j } if b.length > 0 


end

puts merge_sort(multi_array(rando(10)))








