def rando(nums)
	arra = []
	nums.times { arra << rand(100) }
	return arra
end

def bubble_sort(array)
	n = array.length
	loop do
		swapped = false
		(n-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	return array
end

puts bubble_sort(rando(10)).join(", ")