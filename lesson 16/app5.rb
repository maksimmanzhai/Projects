#lesson 16

add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

hh = {11 => add_10, 22 => add_20, 33 =>add_10,
			44 => add_20, 55 => add_10, 66 =>sub_5,
			77 => add_10, 88 => sub_5, 99 =>add_10,
			0 => sub_5
		}

balance = 100

loop do
	x = rand(10..99)
	puts x
		if hh[x]
			f = hh[x]
			balance = f.call balance
			puts "Lambda called"
		else
			balance = sub_5.call balance
		end
	puts "Balance: #{balance}"
	if balance <= 0
		exit
	end
	puts "Press Enter"
	gets
end