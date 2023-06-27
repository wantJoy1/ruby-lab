A,B,C = gets().split.map(&:to_i)

def cmp(x,y)
  if x>y
    ?>
  elsif x==y
    ?=
  else
    ?<
  end
end

ans =
case [A.negative?, B.negative?, C.odd?]
  when [true, true, true]
    cmp(B.abs, A.abs)
  when [false, true, true]
    ?>
  when [true, false, true]
    ?<
  else
    cmp(A.abs, B.abs)
end

puts ans

  
