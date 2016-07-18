#
def count_rectange( n, m )
	sum = 0
	1.upto( n ){ |p|
		1.upto( m ){ |q|
			sum += (n+1-p)*(m+1-q)
		}
	}
	return sum
end

target = 2000000
y = 1
x = 1
diffmin = target

ans_x   = -1
ans_y   = -1
ans_sum = -1

loop do
	y = x

	loop do
	 sum = count_rectange(x,y) 
	 diff = (sum > target) ? (sum-target) : (target - sum)

	 if diffmin > diff
		diffmin = diff		
		ans_sum = sum
		ans_x = x
		ans_y = y
	 end
	 
	 break if sum > target
	 y += 1
	end

	break if x == y
	x += 1
end
#p ans_sum
#p ans_x
#p ans_y
p ans_x * ans_y

