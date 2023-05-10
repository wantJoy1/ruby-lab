H,W = gets.split.map(&:to_i)
A = Array.new(H){gets.split(" ").map(&:to_i)}

dict = [?.] + (?A .. ?Z).to_a

ans = A.map(&:map{|i| dict[i]})
puts ans.map(_1 * "")