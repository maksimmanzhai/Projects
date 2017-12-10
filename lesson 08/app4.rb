print "How old are you? "
age = gets.to_i

if age < 18
	print "Lets go away."
	exit
end

print "Will you play game? (Y / N) "
g = gets.chomp.capitalize

if age >= 18 && g == "Y"
	puts "Well. Lets play!"
	money = 100
	1000.times do
		puts "Enter 'Enter' for game"
		gets
		money = money - 1
		x = rand(0..9)
		y = rand(0..9)
		z = rand(0..9)
		print "#{x} - #{y} - #{z}"

		if x == y || x == z || y == z
			puts "You win 1 money!"
			money = money + 1
		end

		if x == y && y == z && z == x
			puts "You win #{x * 10} money!"
			money = money + x * 10
		end

		if money <= 0
			puts "You lose your money"
			exit
		end
		puts "You money is: #{money}"
	end
end

#gd

if g == "N"
	puts "Thanx for you choose. Good bye!"
	exit
end