
puts (2 ** 1000).to_s.split(//).map{|n| n.to_i}.inject{ |sum,n| sum + n }
