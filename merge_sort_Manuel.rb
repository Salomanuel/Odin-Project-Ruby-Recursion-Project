def rando(qty)
	list = qty.times.map { rand(qty * 1.5)+1 }
end

# puts rando(20).join(", ")

def tinyMerge(ary1,ary2,aryF=[])
	while ary1.length > 0 and ary2.length > 0
		aryF << ((ary1[0] <= ary2[0])? ary1.shift : ary2.shift)
	end
	aryF << ary1 if !ary1.empty?
	aryF << ary2 if !ary2.empty?
	return aryF
end

# puts tinyMerge([1,2],[3,4])
# puts tinyMerge([3,4],[1,2])
# puts tinyMerge([3, 7, 9, 11],[2, 6, 12, 14])

def mergeSort(ary)
	if ary.length >= 2
		left  = mergeSort(ary[0...(ary.length/2)]).flatten
		right = mergeSort(ary[(ary.length/2)..-1]).flatten
		# puts "#{left} : #{right}" 	 if left != nil and right != nil
		return tinyMerge(left,right) if left != nil and right != nil
	else
		return ary if ary.length == 1
		ary = ary[1],ary[0] if ary[0] > ary[1]
		return ary
	end
end

ary1 = [14,7,3,12]
ary2 = [14, 7, 3, 12, 9, 11, 6, 2]
# puts mergeSort(ary2).join(", ")
nums = rando(347)
puts nums.join(", ")
puts
puts mergeSort(nums).join(", ")
