require "open-uri"
require "net/http"
require "json"

def gaitame_online
  "http://www.gaitameonline.com/rateaj/getrate"
end

def get_rate(uri_str)
  json = JSON.parse(get_http(uri_str))
  usdjpy = json["quotes"].find{|h| h["currencyPairCode"]=="USDJPY"}
  usdjpy["open"].to_i
end

def get_http(uri_str)
  URI.open(uri_str).read
end

def to_yen(dollar)
  get_rate(gaitame_online) * dollar  
end

dollar = $*.map(&:to_i)
# puts dollar.empty? ? to_yen(dollar) : "ex)ruby money.rb 1"
puts dollar.empty? ? "ex)ruby money.rb 1" : dollar.map{|i| to_yen(i)}
