File.open(ARGV[0]).each do |line|
	valid = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i =~ line
	puts valid == 0 ? 'true' : 'false'
end
