n = 1
loop do
	#puts "testing... #{n}" if n % 100 == 0
	digits = n.to_s.split(//).map( &:to_i).sort	
	found = true
	2.upto( 6 ){ |m|
		test = ( n * m ).to_s.split( // ).map( &:to_i).sort
		if digits != test
			found = false
			break 
		end
	}
	if found
		p n
		puts 
		exit
	end
	n += 1
end

