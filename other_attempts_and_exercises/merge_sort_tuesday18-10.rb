def mergeSort(ary)
	
	mid = ary.length/2
	a   = ary[0...mid]
	b   = ary[mid..-1]


	if ary.length >= 3
		left  = mergeSort(a)
		right = mergeSort(b)
		puts "#{left} : #{right}" if left != nil or right != nil
	else
		ary = ary[1],ary[0] if ary[0] > ary[1]
		return ary
	end

	


	# puts "#{ary}"
	# puts mergeSort(a) + mergeSort(b)
end


ary = [14, 7, 3, 12, 9, 11, 6, 2]
# ary = [14,7,3,12]

puts mergeSort(ary)