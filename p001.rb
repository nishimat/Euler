#Project Euler 001
#<https://projecteuler.net/problem=1>

sum = 0
1.upto( 1000 - 1 ){ |n|
	sum += n if n % 3 == 0 || n % 5 == 0
}
puts sum
