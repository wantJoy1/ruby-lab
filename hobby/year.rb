# usage
# ex) ruby year.rb 2023
# ex) ruby year.rb R05

require 'date'

def get_date(year)
  Date.parse("#{year}.1.1")
end

# 2023 -> R05
def en_to_jp(year)
  get_date(year).jisx0301
    .partition(".")
    .first
end

# R05 -> 2023
def jp_to_en(year)
  get_date(year).year
end

def is_num(s)
  s.match?(/^\d+$/)
end

year = $*.first
result = is_num(year) ? en_to_jp(year) : jp_to_en(year)
p result
