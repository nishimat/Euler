
$primelist = Array.new
def isprime( n )
	sqrtn = Math.sqrt( n )
	$primelist.each{ |p|
		return true  if p > sqrtn + 1
		return false if n % p == 0
	}
	return true
end

$primelist << 2
sum = 2 

number = 3
while number <= 2000000
	if isprime( number ) 
		$primelist << number 
		sum += number 
	end
	number += 2
end
puts sum	# -> 142913828922
