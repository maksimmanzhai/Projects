#lesson 16

def run
	x = 0
	while x <5
		yield x
		x += 1
	end
end

run { |a| puts "#{a}. lol"}