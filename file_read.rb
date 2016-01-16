contents = File.open("sample.txt", "r") { |io| io.read}
puts contents

puts "-------"

File.open("sample.txt", "r").readlines.each do |line|
  puts line
end

puts "--------"

file = File.open("sample.txt", 'r')
while !file.eof?
  puts "line " + file.readline
end
