require 'prime'

def p_division( n )
	a = Prime.prime_division( n ).map{ |e| e[0] ** e[1] }
#	p a
	a
end

n = 1
loop do
	n1 = p_division( n )
	if n1.size != 4
		n += 1; next
	end
	n2 = p_division( n + 1 )
	if n2.size != 4
		n += 2; next
	end
	n3 = p_division( n + 2 )
	if n3.size != 4 
		n += 3 ; next
	end
	n4 = p_division( n + 3 )
	if n4.size != 4
		n += 4 ; next
	end

	if (n1 & n2 & n3 & n4).size == 0
		puts n			#=>134043
		p n1,n2,n3,n4
		break
	end
	n += 1

end

