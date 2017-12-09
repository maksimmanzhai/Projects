#lesson 12

hh = 	{
				:white => ["12345", "55555", "45453"],
				:pinkman => ["67890", "88888"],
				:schrader => ["67890", "88888"],
				:goodman => "x"
			}
puts "keys:"
puts hh.keys
puts "values:"
puts hh.values

hh.each do |key, value|
	puts "Key: #{key} - Value: #{value}"
end

a = 0
puts "Each_value: "

hh.each_value do |value| 
	a = a + value.size
puts "#{value} = #{value.size}"
end

puts a

puts hh.has_key? :white
puts hh.has_key? :whites

if hh[:whites]
	puts "Has white"
end