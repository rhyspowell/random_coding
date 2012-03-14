# Basic REST.
# Most REST APIs will set semantic values in response.body and response.code.
require "net/http"

http = Net::HTTP.new("graph.facebook.com")

request = Net::HTTP::Get.new("/19292868552")
response = http.request(request)
split_response = response.split(/,/)
puts split_response

request = Net::HTTP::Post.new("/users")
request.set_form_data({"users[login]" => "quentin"})
response = http.request(request)
# Use nokogiri, hpricot, etc to parse response.body.

request = Net::HTTP::Get.new("/users/1")
response = http.request(request)
# As with POST, the data is in response.body.

request = Net::HTTP::Put.new("/users/1")
request.set_form_data({"users[login]" => "changed"})
response = http.request(request)

request = Net::HTTP::Delete.new("/users/1")
response = http.request(request)