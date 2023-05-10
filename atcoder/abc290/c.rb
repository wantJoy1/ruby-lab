N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort.uniq

i = -1
while i+1 == A[i+1]
    i += 1
end

p A
puts [i+1, K].min