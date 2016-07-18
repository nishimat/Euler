=begin
a1 = 1 + 1/2
a2 = 1 + 1/ (1 + a1) 
a3 = 1 + 1/ (1 + a2)
=end

# a/b

count = 0
a = 3; b = 2	# 1st expression
2.upto( 999 ){ |n|
	sa = a + 2 * b
	sb = a + b
	count += 1 if sa.to_s.size > sb.to_s.size
	a = sa
	b = sb
}
puts count

