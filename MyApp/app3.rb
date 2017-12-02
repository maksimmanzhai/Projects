print "How much visitors will to you?"

n = gets.to_i

if n < 0
	puts "Error!"
	exit
end

if n != 0
	puts "Well great"
end

if n == 1
	puts "Visitor is 1"
end

if n == 2 
	puts "Visitors is 2"
end

if n > 2 
	puts "Visitors is more"
end