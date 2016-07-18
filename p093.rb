# https://projecteuler.net/problem=93
#

Opes = ["+","-","*","/"]
Patterns= [
	"%d%c%d%c%d%c%d",		
	"(%d%c%d%c%d)%c%d",
	"%d%c(%d%c%d%c%d)",
	"((%d%c%d)%c%d)%c%d",
	"(%d%c(%d%c%d))%c%d",
	"%d%c((%d%c%d)%c%d)",
	"%d%c(%d%c(%d%c%d))",
	"(%d%c%d)%c%d%c%d",
	"%d%c(%d%c%d)%c%d",
	"%d%c%d%c(%d%c%d)",
	"(%d%c%d)%c(%d%c%d)"
]

def changetoRPN( form )
	formRPN = ""
	stack = []
	i = 0

	while i < form.length
		c = form[ i ]

		if c =~ /[0-9]/
			formRPN += c
		elsif c == "+" || c == "-"
			while stack.length > 0
				st = stack[ -1 ]
				if st == "*" || st == "/" || st == "+" || st == "-"
					st = stack.pop
					formRPN += st  
				else
					break
				end
			end
			stack << c
		elsif c == "*" || c == "/"
			while stack.length > 0
				st = stack[ -1 ]
				if st == "*" || st == "/"
					st = stack.pop
					formRPN += st  
				else
					break
				end
			end
			stack << c
		elsif c == "("
			stack << c 
		elsif c == ")"
			st = stack.pop
			while st != "("
				formRPN += st  
				st = stack.pop
			end
		end
		i += 1
	end
	while stack.length > 0
		formRPN += stack.pop  
	end

	return formRPN
end

def calcRPN( form )
	stack = []
	i = 0

	while i < form.length 
		c = form[ i ]
		if c =~ /[0-9]/
			stack << Rational( c.to_i ,1 )
		elsif c == "+"
			d2 = stack.pop
			d1 = stack.pop
			stack << (d1 + d2)
		elsif c == "-"
			d2 = stack.pop
			d1 = stack.pop
			stack << (d1 - d2)
		elsif c == "*"
			d2 = stack.pop
			d1 = stack.pop
			stack << (d1 * d2)
		elsif c == "/"
			d2 = stack.pop
			d1 = stack.pop
			if d2 == 0
				return -1		# divide by zero
			else
				stack << (d1 / d2)
			end
		end
		i += 1
	end
	return stack.pop
end

def get_nonumber( list )

	return -1 if list.size == 0

	list2 = list.uniq.sort
	list2.each_with_index{ |e,i|
		return i if e != i + 1
	}
	return list2[ -1 ] 
end

def main
	maxlength = -1
	anslist = []

	(0..9).to_a.combination( 4 ){|nums|
		answer = []
		nums.permutation{ |a,b,c,d|
			Opes.repeated_permutation(3){ |x,y,z|
				Patterns.each { |pat|
					form = sprintf( pat,a,x,b,y,c,z,d)
					rpn = changetoRPN(form)
					ans = calcRPN( rpn )
					q = ans.numerator / ans.denominator
					r = ans.numerator % ans.denominator
						
					if r == 0 && 1 <= q
						answer << q
					end
				}
			}
		}
		newval = get_nonumber( answer )
		if maxlength < newval
			maxlength = newval
			anslist =  nums
		end
	}
	puts "--------"
	p anslist
	p maxlength
end

start_time = Time.now
main
p "#{Time.now-start_time}s"

