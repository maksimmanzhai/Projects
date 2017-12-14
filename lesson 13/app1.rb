#lesson 13

hh = Hash.new

arr = Array.new

hh['Mike'] = 65
hh['Jessie'] = 32
hh['Walter'] = 55
hh.store('Saul', 45)
hh.store('Hank', 50)
puts "#{hh}"
puts "keys inspect"
puts hh.keys.inspect
puts "values inspect"
puts hh.values.inspect
puts "#{hh}"

if hh.key? 'Mike'
	puts hh['Mike']
end

hh.delete 'Walter'
puts "#{hh}"