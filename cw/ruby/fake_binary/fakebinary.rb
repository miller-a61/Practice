def fake_bin(s)
	t = ""
	s.each_char{|x| t += x < "5" ? "0" : "1"}
	t
end
