=begin
def fibs_rec(n, arr=[0, 1])
  return arr[-2] if n == 1
  return arr if n == 2
  arr << arr[-2] + arr[-1]
  fibs_rec(n-1, arr)
  return arr.join(", ")
end
=end
def fib_rec(num)
  return [] if num <= 0
  return fib_rec(num - 1).push(num - 1) if num <= 2
  temp = fib_rec(num - 1)
  return temp.push(temp[num-2] + temp[num - 3])
end
# puts fibs(7)
puts fib_rec(7)