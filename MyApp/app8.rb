#lesson 9
def get_password
	print "Type password: "
	return gets.chomp
end

xx = get_password

puts "Has been enter password: #{xx}"