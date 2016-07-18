
def binary_search( arr, value)
  left = 0
  right = arr.size - 1
  mid = 0

  while left <= right do
    mid = (left + right) / 2
    if arr[mid] == value
	  return true
    elsif arr[mid] < value
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return false
end

def main
	maxindex = 10000
	pentagonal = Array.new
	1.upto( maxindex ){ |n|
		pentagonal <<  n * ( 3 * n - 1 ) / 2
	}
#	p pentagonal

	1.upto( maxindex - 1 ){|a|
		(a+1).upto( maxindex - 1){|b|
			diff = pentagonal[ b ] - pentagonal[ a ]
			sum  = pentagonal[ b ] + pentagonal[ a ]
			 
			if binary_search( pentagonal, diff )
				if binary_search( pentagonal, sum )
					p a
					p b
					p diff
				end
			end
		}
	}
end

main
