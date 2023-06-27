n = gets().to_i
k = 0
while n >= 2
  n /= 2
  k += 1
end

puts k