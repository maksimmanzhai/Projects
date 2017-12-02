#lesson 11
#1. Написать программу "Камень-ножницы-бумага" по памяти. Если не получится, смотрите видео 
#   11 урока.

arr = [:rock, :scissor, :paper]

print "Enter R(rock), S(scissor) or P(paper): "

pc = gets.chomp

case pc
	when "r"
		pc = :rock
	when "s"
		pc = :scissor
	when "p"
		pc = :paper
end

cc = arr[rand(0..2)]

puts "#{pc} vs. #{cc}"

if pc == cc
	puts "Draw"
	exit
end

if pc == :rock && cc == :scissor || pc == :scissor && cc == :paper || pc == :paper && cc == :rock
	puts "You win"
else
	puts "You lose"
end