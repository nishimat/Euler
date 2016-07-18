
max = 0
saveval = -1 
1.upto( 999 ){ |n|
	a = 1
	b = n
	rlist = Array.new
	rlist << a

	loop do
		while a < b do a *= 10 end
		r = a % b

		if r == 0
			break
		elsif rlist.include?( r )
			rsize = rlist.size 
			if max < rsize
				max = rsize
				saveval = n
			end
			break
		else
			rlist << r
			a = r
		end
	end
}
#puts max
puts saveval
