require 'rubygems'
require 'uri'
require 'json'
require 'net/http'

url = "http://search.twitter.com/search.json?q=bleachin"
resp = Net::HTTP.get_response(URI.parse(url))
data = resp.body
results = JSON.parse(data)

print results
