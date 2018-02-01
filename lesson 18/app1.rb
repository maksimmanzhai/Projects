def is_password_weak password
	input = File.open "parols.txt", "r"
	while (line = input.gets)
		line.strip!
		if password.include? line
			return true
		end
	end
	return false
end

puts "Enter your password"
my_password = gets.chomp.to_s

if is_password_weak my_password
	puts "Your password is weak"
else
	puts "Your password is not weak"
end
