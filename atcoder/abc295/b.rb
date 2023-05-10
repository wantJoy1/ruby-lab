# input
R,C = gets.split(" ").map{|ch| ch.to_i}
B = Array.new(R) {gets.chars}

# index check
def isDefinedAt(i, j)
    0 <= i && i < R && 0 <= j && j < C
end

# explode
def explode(b, posi, posj)
    B[posi][posj] = "."
    for i in posi-b..posi+b do
        for j in posj-b..posj+b do
            if isDefinedAt(i,j)
                dis = (i-posi).abs+(j-posj).abs 
                B[i][j] = "." if dis <= b && B[i][j] == 0
            end
        end
    end
end

for i in 0...R do
    for j in 0...C do
        b = B[i][j].to_i
        explode(b, i, j) if b != 0
    end
end

puts
B.each do |line|
    puts line.join("")
end