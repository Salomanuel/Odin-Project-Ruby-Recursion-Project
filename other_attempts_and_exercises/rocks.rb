rocks = 30.times.map{rand(200)+1}

max_rock = 0
rocks.each do |rock|
	max_rock = rock if max_rock < rock
end
puts "Heaviest rock is: #{max_rock}"

def rock_judger(rocks_arr)
	if rocks_arr.length <= 2
		a = rocks_arr[0]
		b = rocks_arr[-1]
	else
		m = rocks_arr.length/2
		a = rock_judger(rocks_arr[0..m])
		b = rock_judger(rocks_arr[m...-1])
	end
	return a > b ? a : b
end

puts rock_judger(rocks)