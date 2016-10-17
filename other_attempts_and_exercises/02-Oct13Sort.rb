=begin
in the divide step, we compute q=3.
the conquer step has us sort the two subarrays 
array[0..3], which contains [14, 7, 3, 12], and
array[4..7], which contains [9, 11, 6, 2]. 

when we come back from the conquer step, 
each of the two subarrays is sorted: 
array[0..3] contains [3, 7, 12, 14] and 
array[4..7] contains [2, 6, 9, 11], 
so that the full array is 
[3, 7, 12, 14, 2, 6, 9, 11].

finally, the combine step merges the two sorted
subarrays in the first half and the second half, 
producing the final sorted array 
[2, 3, 6, 7, 9, 11, 12, 14].

How did the subarray array[0..3] become sorted?
p=0 and r=3, q=1, recursively sort 
array[0..1] ([14, 7]) and array[2..3] ([3, 12]),
resulting in 
array[0..3] containing [7, 14, 3, 12], 
and merge the first half with the second half, 
producing [3, 7, 12, 14]. 

How did the subarray array[0..1] become sorted?
p=0 and r=1, q=0, recursively sort 
array[0..0] ([14]) and array[1..1] ([7]), 
resulting in 
array[0..1] still containing [14, 7], 
and merge the first half with the second half, 
producing [7, 14].
=end

def sort(array)	#	array[p..q..r]
	p = 0
	r = (array.length)-1
	q = r/2

	if r > 0
		lowHalf  = sort(array[p..q])
		highHalf = sort(array[q+1..r])
		array = []
		lowHalf.length.times do |i|
			if lowHalf[i] < highHalf[i]
				array[i] = lowHalf[i]
				lowHalf.delete_at(i)
			elsif highHalf[i] <= lowHalf[i]
				array[i] = highHalf[i]
				highHalf.delete_at(i)
			end
		end
		return
	end
	puts array.join(", ")
	# puts "p,q,r: #{p},#{q},#{r}"
		
	# puts lowHalf.class

end




ary = [14, 7, 3, 12, 9, 11, 6, 2]

puts sort(ary)
# puts splitter(ary)