#lesson 11

arr = %w[lol, kek, cheburek]

arr.each_with_index do |item, i|
	puts "#{i + 1} #{item}"
end