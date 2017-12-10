puts "Enter number A"
a = gets.to_f

puts "Enter number B"
b = gets.to_f

puts "What you doing for this number? + - * /"
op = gets.strip

result = 0

if op == "+"
	result = a + b
end

if op == "-"
	result = a - b
end

if op == "*"
	result = a * b
end

if op == "/"
	if b == 0
		result = "null"
		puts "Result operation #{op} is #{result}"
		exit
	else
		result = a / b
	end
end

puts "Result operation #{op} is #{result}"