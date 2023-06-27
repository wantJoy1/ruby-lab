X = gets().strip.chars.map(&:to_i)

def is_success(ary)
  ans = true
  for i in 0..2
    l,r = ary[i], ary[i+1]
    ans = false if (l+1)%10 != r
  end
  ans
end

puts X.all?{|i| i == X.first} || is_success(X) ? "Weak" : "Strong"
