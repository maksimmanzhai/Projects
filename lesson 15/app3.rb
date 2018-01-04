class Animal
	attr_reader :name
	def initialize name
		@name = name
	end

	def run
		puts "#{name} run"
	end

	def jump
		puts "#{name} jump"
	end
end

class Cat < Animal
	def initialize
		super "cat"
	end
end

class Dog < Animal
	def initialize
		super "dog"
	end	
end

cat = Cat.new
cat.run

dog = Dog.new
dog.jump