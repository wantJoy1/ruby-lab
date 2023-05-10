require "csv"

def convert(s)
    s.encode(Encoding::UTF_8, Encoding::Shift_JIS)
end

Dir::each_child(".") {|filename|
    opitons = { headers: false, encoding: Encoding::Shift_JIS }
    array = CSV.read("csv/#{filename}", options)
    array.each do |data|
        p "#{data[1]} #{data[2]}"
    end
}

=begin
Dir::each_child("csv") {|filename|
    opitons = { headers: false, encoding: Encoding::Shift_JIS }
    array = CSV.read("csv/#{filename}", options)
    array.each do |data|
        p "#{data[1]} #{data[2]}"
    end
}
=end