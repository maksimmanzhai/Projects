print "Skolko deneg v mesiatc: "
x = gets.to_f

print "Skolko let otkladivat: "
y = gets.to_i

s = 0

1.upto(y) do |y|
	1.upto(12) do |m|
		s = s + x
		puts "God\t#{y} mesiatc\t#{m}, otlojeno\t#{s} deneg" 
	end
end
