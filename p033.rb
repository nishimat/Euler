#
# a/b < 1
# a:10-98
# b:11-99

def remove_common_digit( a, b )
	xa = a.divmod( 10 )
	xb = b.divmod( 10 )

	return -1,-1 if xa[ 1 ] == xb[ 1 ] && xa[ 1 ] == 0

	return xa[ 1 ],xb[ 1 ] if xa[ 0 ] == xb[ 0 ]
	return xa[ 1 ],xb[ 0 ] if xa[ 0 ] == xb[ 1 ]
	return xa[ 0 ],xb[ 1 ] if xa[ 1 ] == xb[ 0 ]
	return xa[ 0 ],xb[ 0 ] if xa[ 1 ] == xb[ 1 ]
	return -1,-1
end

#x1/x2
x1 = 1
x2 = 1
10.upto( 98 ){|a|
	(a+1).upto( 99 ){|b|
		a1,b1 = remove_common_digit( a, b )
		if a1 != -1 && (a1 * b == b1 * a)
			puts "#{a}/#{b}"
			x1 *= a1
			x2 *= b1
		end
	}
}
puts "#{x1}/#{x2}"

# non trivial answer
# 16/64,19/95,26/65,49/98
