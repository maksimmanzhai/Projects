#lesson 10
#rock - scissors - paper

#1. random from symbol and display
#2. user is choose
#3. display of result

@arr = [:rock, :scissors, :paper]

puts "Choose rock (0), scissors (1) or paper (2). Print \"Exit\" for Exit"
print "Enter your varaible: "
input = gets.chomp.to_i

choice = @arr[input]
puts "You choose #{choice}"

random = @arr[rand(0...@arr.size)]
puts "PC choose #{random}"

matrix = [
	[:rock, :rock, :draw],
	[:scissors, :scissors, :draw],
	[:paper, :paper, :draw],
	
	[:rock, :scissors, :user_win],
	[:rock, :paper, :pc_win],
	[:scissors, :rock, :pc_win],
	[:scissors, :paper, :user_win],
	[:paper, :rock, :user_win],
	[:paper, :scissors, :pc_win]
]

matrix.each do |item|
	if choice == random
		puts "#{item[2]}"
		break
	end
	if choice == item[0] && random == item[1]
		puts "#{item[2]}"
	end
end