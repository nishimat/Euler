=begin
The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
(Please note that the palindromic number, in either base, may not include leading zeros.)
=end

n = 1
sum = 0
while n < 1000000
	if  (n.to_s == n.to_s.reverse) &&
		(n.to_s(2) == n.to_s(2).reverse)
		#puts n
		sum += n
	end
	n += 2
end
puts sum
