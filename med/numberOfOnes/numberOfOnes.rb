File.open(ARGV[0]).each do |line|
	puts line.to_i.to_s(2).to_s.gsub(/[0]/, '').length
end
