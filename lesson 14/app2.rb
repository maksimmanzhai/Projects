#lesson 14

class Animal
	def name x
		@name = x
	end
	def run
		puts "#{@name} is run"
	end
end

a = Animal.new
a.run
a.name "dough"