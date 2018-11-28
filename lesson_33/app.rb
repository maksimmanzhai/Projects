hh = {}

loop do
	puts 'enter product id: '
	id = gets.chomp

	puts 'enter amount (how much items yoou order): '
	n = gets.chomp.to_i

	x = hh[id].to_i 	# read hash value (0 if it's not exist)
	x = x + n 				# increase by n
	hh[id] = x 				# set hash value
	puts hh.inspect

	# calculate total number of items in cart
	total = 0
	hh.each do |key, value|
		total = total + value
	end

	# puts total variable
	puts "Total items in cart: #{total}"
	puts '==========='
end