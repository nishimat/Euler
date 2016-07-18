
fa = 1
fb = 1
fc = 0
n = 2
while true
	fc = fa + fb
	n += 1
	break if fc.to_s.split(//).size >= 1000

	fa = fb
	fb = fc
end
p fc
p n
