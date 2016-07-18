
# shoudl be a >=b 
#
def furui( a, b )
	loop do
		return a if b == 0

		m = a % b
		t = b 
		b = m 
		a = t 
	end
end

min = 1000
maxval= 1000000
ans = []
2.upto( maxval ){ |n|
	m = 3 * n 
	if m % 7 == 0
		f = 3 * n / 7 - 1
	else
		f = 3 * n / 7
	end

	diff = (3 * n - 7 * f).to_f / (7 * n ) .to_f
	if diff < min
		min = diff
		ans = [ f,n]
	end
}

p furui( 10,3)
p furui( 10,4)
p ans
p furui( ans[ 1],ans[0])
