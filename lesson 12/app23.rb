#lesson12

#однорукий бандит через хеш
score = 0
balance = 100
scores = { 	"111" => 10,
						"222" => 20,
						"333" => 30,
						"444" => 40,
						"555" => 50,
						"666" => 60,
						"777" => 100,
						"888" => 80,
						"999" => 90,
						"000" => -100
}

loop do
	puts "Press Enter to play.."
	gets
	puts "You balance is #{balance} dollars"
	
	puts "Enter your bet(more than 0). Enter 0(zero) for quit: "
	bet = gets.chomp.to_i
	break if bet == 0 || balance == 0

	if bet <= balance
		balance = balance - bet
		r = rand(000..999).to_s
		puts "Random: #{r}"
		if scores[r]
			puts "You win #{scores[r] * bet} dollars"
			balance = balance + scores[r] * bet
		end
	end

end