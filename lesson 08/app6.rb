#8 lesson
x = rand(1..100)
t = 5
1.upto(t) do |n|
	print "I have number (1..100). It is #{n} attempt. You have a #{t - n + 1} attempt."
	a = gets.to_i

	if a == x
		puts "You win"
		exit
	elsif x > a 
		puts "No, more"
	elsif x < a
		puts "No, less"
	end
end

puts "My number is #{x}."