=begin
# 1901 1.1
# 2000 12.30
1904,...,1996 leap
2000,...      leap
# 100 / 4 = 25

# 1 Jan 1900 was a Monday.
# 1900 is not leap year -> 365,
# 1901/1/1 Tues 

n = 365 * 75 + 366 * 25 - 5
puts n
num = n / 7  
num += 1 if n % 7 > 0
print num

=end

month = [31,31,28,31,30,31,30,31,31,30,31,30]

f = 2      # 1901/01/01 Tuesday
f = 2 - 31 # 1900/12/1
sum = 0
1901.upto( 2000 ){|year|
	month.each_with_index{|day,month|
		if month == 2 && year % 4 == 0
			f += (day + 1) 
		else
			f += day
		end
		if f % 7 == 0 
			sum += 1 
			#puts "#{year}/#{month+1}/01"
		end
	}
}
puts sum
