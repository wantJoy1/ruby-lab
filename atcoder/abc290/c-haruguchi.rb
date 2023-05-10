n, k, *a = $<.read.split.map(&:to_i)
p ([*0..k] - a).first || k
