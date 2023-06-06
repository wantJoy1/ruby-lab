N = gets.to_i
A = gets.split.map(&:to_i)

table = Array.new(N){false}

for i in 0...N
  table[A[i]-1] = true if !table[i]
end

ans = table.each_with_index
  .filter{|b,i| !b}
  .map{|b,i| i+1}

puts ans.length
puts ans.join(" ")