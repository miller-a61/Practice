require 'json'
File.open(ARGV[0]).each_line do |line|

	stuff = JSON.parse(line)
	puts stuff["label"]


end
