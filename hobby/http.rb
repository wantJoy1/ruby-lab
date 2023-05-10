require "net/http"

uri = URI.parse("http://www.google.com/ig/calculator?hl=ja&q=1USD=?JPY")
response = Net::HTTP.get_response(uri)

p response.code # status code
p response.body # response body
