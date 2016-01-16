somefile = File.open( "sample.txt", "w")
somefile.puts "This is a test"
somefile.close

somefile = File.open( "sample.txt", "a")
somefile.puts "This is appended"
somefile.close

File.open("sample.txt", "a") { |io| io.puts "appeded using block notation"}