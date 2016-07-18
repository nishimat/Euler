require 'prime'

def sequence3( ary )
	return true if ary[ 0 ] + ary[ 2 ] == ary[ 1 ] * 2
	return false
end

primelist = Array.new
digithash = Hash.new

(0..9).to_a.repeated_combination(4){ |p| digithash[ p ] = [] }

1000.upto( 9999 ){|n|
	if Prime.prime?( n )
		pattern = n.to_s.split(//).map(&:to_i).sort
		old = digithash[ pattern ]
		old << n
		digithash[ pattern ] = old.dup
	end
}

digithash.each{|key,val|
	val.delete_if{ |n| Prime.prime?( n ) == false }
}
digithash.each{|key,val|
	if val.size >= 3
		val.combination(3){ |ary| 
			#	p ary
				if sequence3( ary.sort )
					puts "#{ary[0]}#{ary[1]}#{ary[2]}"
				end
		}
	end
}


