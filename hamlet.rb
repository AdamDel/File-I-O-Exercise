require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
puts open(url).readline

puts "------"


file = open(url)

while !file.eof?
  line = file.readline
  File.open("hamlet.txt", "a") { |io|  io.puts line}
end


File.open("hamlet2.txt", "w"){|file| file.write(open(url).read)}

File.open("hamlet2.txt", "r") do |file|
  file.readlines.each_with_index do |e, i| 
    puts e if i % 42 == 41
  end
end

puts "Lines by hamlet"

is_hamlet_speaking = false
File.open("hamlet2.txt", "r") do |file|
   file.readlines.each do |line|

      if is_hamlet_speaking == true && ( line.match(/^  [A-Z]/) || line.strip.empty? )
        is_hamlet_speaking = false
      end

      is_hamlet_speaking = true if line.match("Ham\.")

      puts line if is_hamlet_speaking == true
   end   
end
