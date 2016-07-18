pn0 = 1
pn1 = 2
sum = 2 
while (pn2 = pn0 + pn1) <= 4000000
	sum += pn2 if pn2 % 2 == 0
	pn0 = pn1 
	pn1 = pn2
end
puts sum

