N,M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

C = []

for i in 0...N do
    C.push [A[i], ?a, i]
end

for i in 0...M do
    C.push [B[i], ?b, i]
end

C.sort_by!(&:first)

for i in 0...N+M do
    C[i] = C[i] + [i]
end

C.sort_by!{|i| i[2]}

ans_a = C.filter{|i| i[1] == ?a}.map{|i| i[3]+1}
ans_b = C.filter{|i| i[1] == ?b}.map{|i| i[3]+1}

puts ans_a.join(" ")
puts ans_b.join(" ")