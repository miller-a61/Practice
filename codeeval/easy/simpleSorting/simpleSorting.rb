File.open(ARGV[0]).each_line do |line|
	arr = line.chomp.split.map(&:to_f).sort
	arr.each {|x| print "%0.3f " % x}
	puts ""	
end
