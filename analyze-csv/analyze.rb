require "csv"

def convert(str)
    str.encode(Encoding::UTF_8, Encoding::Shift_JIS)
end

def get_str(filename)
    file = File.open(filename, "r")
    str = file.read
    file.close
    str
end

def valid_date(s)
    /\d{4}\/\d{2}\/\d{2}/.match?(s)
end

Dir::each_child("csv") {|filename|
    hash = Hash.new
    hash.default = 0
    utf8 = convert(get_str("csv/#{filename}"))

    # 文字列から一行ずつ
    CSV.parse(utf8) do |row|
        date = row[0]
        store = row[1]
        price = row[2].to_i
        hash[store] += price if valid_date(date)
    end
    
    ans = hash.to_a.sort_by{|ary| ary[1]}
        .reverse
        .map{|ary| "#{ary[0]}, #{ary[1]}"}
        .join("\n")

    IO.write "result/#{filename}", ans
}