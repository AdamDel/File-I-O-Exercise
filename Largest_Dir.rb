Dirname = "/vagrant"
Dir.glob("#{Dirname}/*/*.*").sort_by { |file| File.size(file)}.reverse[0..9].each do |file|
  puts "#{file} size: #{File.size(file)}"
end


Dir.glob(Dir.glob("#{Dirname}/*/*.*")