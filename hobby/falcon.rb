def falcon
  "ファルコン・パンチ".chars.shuffle.join("")
end

def is_chinco(s)
  s == "フルチンコ・パァン"
end

count = 1
f = falcon
while !is_chinco(f)
  puts f
  f = falcon
  count += 1
end

puts f
puts count
