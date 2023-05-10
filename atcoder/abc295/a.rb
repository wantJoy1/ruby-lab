N = gets.to_i
W = gets.split(" ")
WORDS = "and, not, that, the, you".split(", ")

puts ((W & WORDS).empty?) ? "No" : "Yes"
