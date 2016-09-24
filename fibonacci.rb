=begin
Write a method #fibs which takes a number 
and returns that many members of the fibonacci sequence. 
Use iteration for this solution.

Now write another method #fibs_rec which solves 
the same problem recursively. 
This can be done in just 3 lines 
(or 1 if you're crazy, but don't consider either 
	of these lengths a requirement... 
	just get it done).
=end

def fibonacci(number)
	return 1 if number == 1
	return 0 if number == 0
	return fibonacci(number-1) + fibonacci(number-2)
end

def fibs(length)
	number_list = []
	i  = 0
	while (number_list.length) < length do
		number_list << fibonacci(i)
		i += 1
	end	
	return number_list.join(", ")
end

def fibs_rec(number)
	@number_list = []
	i = 0
	def fibs_inner(number)
		@number_list << fibonacci(number)
		i += 1
	end
	return @number_list if @number_list.length == number
	fibs_inner(number)
end

#puts fibonacci(3)
puts fibs(7)			# => 0, 1, 1, 2, 3, 5, 8
puts fibs_rec(7)