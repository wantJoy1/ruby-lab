def solve(n,d,k)
    d %= n
    round = d.lcm(n) / d
    (d*k)%n + k / round
end

D = gets.to_i

D.times do
    n,d,k = gets.split.map(&:to_i)
    puts solve(n,d,k)
end