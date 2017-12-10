#lesson 9

arr = []
while true
	puts "What is your favorite color? Stop for exit"
	color = gets.strip
	
	if color == "stop"
		puts arr.reverse.uniq!
		exit
	end
	arr << color
end