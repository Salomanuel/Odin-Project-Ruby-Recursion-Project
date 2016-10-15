=begin
The base case is when n=0, and x^​0​​=1.

If n is positive and even, recursively compute
	y=x^(n/2) and then x^n=y⋅y

If n is positive and odd, recursively compute
	x^(n−1)​, so that the exponent either is 
	0 or is positive and even.Then, x^n=x^(n−1)⋅x

If n is negative, recursively compute 
	x^(−n) so that the exponent becomes positive.
	Then, x^n=(1/(x^(−n)))
=end

def powa(x,n)
	if 		n==0
		return 1
	elsif n == 1
		return x
	elsif  n < 0
		return 1.0/powa(x,n.abs) 
	else
		return powa(x,n-1) * powa(x,1)
	end
end

puts powa(3, 0) # => 1
puts powa(3, 1) # => 3
puts powa(3, 2) # => 9
puts powa(7, 13)
puts powa(3, -1) # => 1/3