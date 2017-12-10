print "How much you will play? "
n = gets.to_i

print "How you favorite number? "
f = gets.to_i

1.upto(n) do |m|
	puts "Play #{m} counts."
	x = rand(1..50)

	if x == f
		puts "You Win!!!"
	end
end