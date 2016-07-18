
$primelist = Array.new

def isprime( n )
	$primelist.each{ |p|
		return false if n % p == 0
	}
	return true
end

$primelist << 2
checknum = 3

while $primelist.size < 10001
	if isprime( checknum ) 
		$primelist << checknum
	end
	checknum += 2
end
#p $primelist
puts $primelist[ -1 ] #-> 104743
