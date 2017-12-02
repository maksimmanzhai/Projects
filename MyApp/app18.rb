#lesson 11

#1. enter name
#2. enter number
#3. empty string -> display and exit

notebook = {}

loop do
	puts "Enter name or empty for exit: "
	name = gets.chomp.to_s
	break if name == ''
	puts "Enter phone: "
	phone = gets.chomp.to_s
	notebook[name] = phone
	
	notebook.each do |key, value|
		puts "Name:\t#{key}.\tPhone:\t#{value}"
	end

end