# consider hash as an array with index can be any object type.

# create hash

# method 1 literal
grades = {"Jane Doe" => 10, "Jim Doe" => 6}
puts grades

# method 2 using symbol
options = {:font_size => 10, :font_family => "Arial"}
puts options

# method 3 (same out-put as method 2)
options = {font_size: 20, font_family: "Arial"}
puts options

# access value by key or index
puts options[:font_size]

# create through ::new method
grades = Hash.new
grades["Doro Doe"] = 9
grades["Aoro Ann"] = 10
puts grades

# hashes have a default value when keys do not exists.
# if no default is set nil is used.
# following 2 ways to set default value

# method 1
#grades = Hash.new(-1)
#puts grades[:Jen]

# method 2
grades.default = -2
puts grades["Jens"]

# uses
# create an empty hash, then add 2 values in it
books = {}
books[:matz] = "the ruby language"
books[:black] = "the well-grounded rubyist"
puts books

# public class method
# create new hash
new_hash = Hash["a", 100, "b", 200]
new_hash = Hash[[["a", 100], ["b", 200]]]
new_hash = Hash["a" => 100, "b" => 200]
puts new_hash

# using new key word with default value specified as argument of new()
h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
puts h["a"]  # 100
puts h["c"]   # Go Fish
# alter default object
h["c"].upcase!
puts h["c"]   # GO FISH
puts h["d"]   # GO FISH
puts h.keys
# using new key word with block style
h = Hash.new {|hash, key| hash[key] = "Go Fish: #{key}"}
puts h["c"]
puts h["c"].upcase!
puts h["d"]
puts h.keys




