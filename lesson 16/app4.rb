#lesson 16

x = lambda { puts 'Hi' }
x.call

sub_10 = lambda do |x|
	x - 10
end

a = sub_10.call 1000
puts a

# +10
# +20
# -5
