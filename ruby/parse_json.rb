require 'rubygems'
require 'yajl'

file = File.open('parse_json.json','r')
parser = Yajl::Parser.new
people = parser.parse(file)

print "Hello person 2 my name is " + people['person1']['name'] +"\n"
print people['person2']['comment'] +"\n"
print "My name is " + people['person2']['name'] +"\n"
print people['person1']['comment'] +"\n"
