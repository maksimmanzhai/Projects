#lesson 13

hh = Hash.new

arr = Array.new

hh['Mike'] = 65
hh['Jessie'] = 32
hh['Walter'] = 55
hh.store('Saul', 45)
hh.store('Hank', 50)
puts hh
puts hh.inspect

puts "#{hh}"

hh.each do |k, v|
	puts k
	puts v
end