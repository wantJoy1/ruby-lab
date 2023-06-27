A,B,C = gets().split.map(&:to_i)

C = C % 2 + 2

puts case A**C <=> B**C
  when -1
    ?>
  when 0
    ?=
  when 1
    ?<
end

# 60.chr == ?<
# 61.chr == ?=
# 62.chr == ?>

# putc 61 + (A**C<=>B**C)
