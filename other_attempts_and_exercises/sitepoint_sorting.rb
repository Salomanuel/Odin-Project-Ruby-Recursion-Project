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

def merge_sort(array)
	def merge(left_sorted, right_sorted)
		res = []
		l   = 0
		r   = 0
		loop do
			break if r >= right_sorted.length and l >= left_sorted.length

			if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
				res << left_sorted[l]
				l += 1
			else
				res << right_sorted[r]
				r += 1
			end
		end
		return res
	end

	def mergesort_iter(array_sliced)
		return array_sliced if array_sliced.length <= 1

		mid = array_sliced.length/2 - 1
		left_sorted  = mergesort_iter(array_sliced[0..mid])
		right_sorted = mergesort_iter(array_sliced[mid+1..-1])
		return merge(left_sorted, right_sorted)
	end

	mergesort_iter(array)
end



def benchmark(reps=10, list_length = 2090)
	ten_random_numbers = rando(list_length)
	puts "benchmark running\n#{reps} repetitions with a list length of #{list_length}"
	start1  = Time.now
	reps.times {bubble_sort(ten_random_numbers)}
	finish1 = Time.now
	bubble_time = finish1-start1
	puts "bubble sort done"
	start2  = Time.now
	reps.times {merge_sort(ten_random_numbers)}
	finish2 = Time.now
	merge_time = finish2-start2
	if bubble_time < merge_time
		puts "bubble sort won by #{merge_time - bubble_time}sec"
	else
		puts "merge sort won by #{bubble_time - merge_time}sec"
	end
end 

puts benchmark

#puts bubble_sort(ten_random_numbers).join(", ")
#puts  merge_sort(ten_random_numbers).join(", ")