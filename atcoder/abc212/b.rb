X = gets().chars.map(&:to_i)

def is_success(ary)
  ans = true
  for i in ary.each_index.drop(1)
    l,r = ary[i-1], ary[i]
    ans &&= (r-l) == 1
  end
  ans
end

puts X.all?{|i| i == X.first} || is_success(X) ? "Weak" : "Strong"
