
def palindromic( n )
	return false if n < 100000
	 a = n.to_s.split(//).map{|i| i.to_i }

	 if a[0] == a[5] && a[1] == a[4] && a[2] == a[3]
		 return true
	 else
	 	return false
	 end
end

maxval = 0
100.upto( 999 ){|j|
	100.upto( 999 ){|i|
		n = j * i
		maxval = n if n > maxval && palindromic( n )
	}
}
puts maxval
