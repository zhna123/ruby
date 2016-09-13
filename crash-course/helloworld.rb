# hello world
print "hello world\n"
#print 'hello world\n'

# puts is print + \n
puts "some output that has to get there fast!"

# variable substitution
a = 2
print "the number is #{a} \n"
print "double the number: #{a * 2} \n"

# loops
# while
a = 0
while (a < 3)
  puts "#{a}"
  a = a + 1
end

# Array.each
[1, "foo", -7.6].each do |x|
  print "#{x} \n"
end

# fixnum loops
3.downto(1) {
  print "hi \n"
}

3.upto(5) do |i|
  puts "#{i}"
end

# for loops
for element in [100, "hi", -1]
  puts "#{element}"
end
for element in (2..5)
  puts "#{element}"
end

# begin-end loop (bad)
a = 1
begin
  a = a + 1
  puts "#{a}"
end while a < 10

# recursive method
def factorial(num)
  if (num == 1)
    return 1
  else
    return num * factorial(num-1)
  end
end

# file operations
data = File.read("filename.txt")
# example
file = File.open("filename.txt")
file.each_line do |line|
  print line
end
file.close
# OR
file = File.open("filename.txt")
file.each_line {|line| print line}
file.close
# write to a file
file = File.new("file.txt", "w")
file << "line1\n"
file << "line2\n"
file.close
# OR
file.write("string")
file.close
