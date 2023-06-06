puts("input x:")
x = gets().to_i
puts("input y:")
y = gets().to_i

r,q = x,0
while !(r < y)
  r -= y
  q += 1
end

puts("calculated: #{x} / #{y}")
puts("quotient: #{q}")
puts("remainder: #{r}")
