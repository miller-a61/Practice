File.open(ARGV[0]).each_line do |line|
	dms = line.to_f
	degree = dms.floor
	minute = ((dms - degree) * 60)
	second = (minute - minute.floor) * 60

	minstr = minute.floor.to_i.to_s
	minstr.length == 1 && minstr = "0" + minstr

	secstr = second.floor.to_i.to_s
	secstr.length == 1 && secstr = "0" + secstr

	puts "#{degree}.#{minstr}'#{secstr}" + '"'
end
