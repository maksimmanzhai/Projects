#lesson 10

@names = ["walt", "hank", "jr", "jessie", "lidia", "eric", "carl"]

def list_of_pupil
	puts "\tList of pupuil:\n\t==============="
	for x in 0...(@names.size)
		puts "#{x + 1} #{@names[x]}"
	end
end

loop do
	list_of_pupil

	puts "Do you want to add or to delete? Enter add or del. \"Enter\" for exit"
	
	input = gets.chomp.to_s

	case input
		when "add"
			puts "Enter name for add to list"
			input_name = gets.chomp.to_s
			@names << input_name
		when "del"
			puts "Do you want to delete? Enter (1 - #{@names.size})"
			del = gets.chomp.to_i
			@names.delete_at(del - 1)
		when ""
			exit
		else 
			puts "Enter add or del"
	end

	break if @names.size == 0
end