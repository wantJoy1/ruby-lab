N = gets().to_i

ary = []

b = 0
while 2**b <= N
  a,c = N.divmod(2**b)
  ary.push(a+b+c)
  b += 1
end

if 2**b > N
  ary.pop
end

puts N == 1 ? 1 : ary.min