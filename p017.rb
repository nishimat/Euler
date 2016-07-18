
=begin
 #http://kw-note.com/translation/numbers-1-to-100-in-english/
=end

list1  = [ "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten" ]
list2  = [ "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", 
		   "eighteen", "nineteen", ]
list3  = [ "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]
list1a = [ "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ]
list1b = [ "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ]


#1-19
sum = 0
sum += list1.inject( :+ ).size
sum += list2.inject( :+ ).size

#20-99
list3.each{ |a|
	list1a.each{ |b|
		sum += (a + b).size
	}
} 
sum2digit = sum
# 100,200,300,...900
list1b.each{ |a|
	sum += ( a + "hundred" ).size
}
#101-199,201-299,...,901-999
list1b.each{ |a|
	hsize =( a + "hundred" + "and" ).size
	sum += hsize * 99 + sum2digit
}
# 1000
sum += ("one"+ "thousand").size
p sum	#=> 21124
