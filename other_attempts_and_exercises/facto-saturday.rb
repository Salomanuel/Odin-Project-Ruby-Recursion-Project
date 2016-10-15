# 1 * 2 * 3 * ... * n

def factorio(n)
	return 1 if n <= 1
	n * factorio(n-1)
end

puts factorio(5)
puts factorio(0)


# //Program.assertEqual(factorial(5), 120);
# //Program.assertEqual(factorial(0), 1);