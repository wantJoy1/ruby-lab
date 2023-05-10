n,k = gets.split.map(&:to_i)
S = gets.strip.chars

for i in S do
    if i == ?o && k > 0
        print ?o
        k -= 1
    else
        print ?x
    end
end