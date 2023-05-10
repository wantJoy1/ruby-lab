N = gets.to_i
A = gets.split(" ").map{|s| s.to_i}

puts A.filter{|a| a%2==0}.join(" ")