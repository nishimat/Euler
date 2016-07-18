

sum = 0
(0..9).to_a.permutation(10){ |p|
	plist = [0,2,3,5,7,11,13,17]
	check = true
	1.upto( 7 ){ |t|
		test = p[t,3].inject{| memo,n| memo*10+n }
		if test % plist[ t ] != 0  
			check = false
			break
		end
	}
	sum += p.inject{ |memo,n| memo*10 + n} if check
}
puts sum
