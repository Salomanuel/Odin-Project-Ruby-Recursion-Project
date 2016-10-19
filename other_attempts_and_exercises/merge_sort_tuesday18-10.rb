def tinyMerge(ary1,ary2,aryF=[])
	while ary1.length > 0 and ary2.length > 0
		aryF << ((ary1[0] <= ary2[0])? ary1.shift : ary2.shift)
	end
	aryF << ary1 if !ary1.empty?
	aryF << ary2 if !ary2.empty?
	return aryF
end

puts tinyMerge([1,2],[3,4])
puts tinyMerge([3,4],[1,2])
puts tinyMerge([3, 7, 9, 11],[2, 6, 12, 14])


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

# puts mergeSort(ary)