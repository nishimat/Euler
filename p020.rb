

f = 1
1.upto( 100 ){|n| f *= n }
puts  f.to_s.split(//).map{|n| n.to_i }.inject{ |sum, n| sum + n }

