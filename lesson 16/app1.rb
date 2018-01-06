#lesson 16

class Animal
	attr_accessor :name
	def initialize name
		@name = name
	end
	
	def run
		puts "#{name} is running"
	end

	def jump
		eat
		puts "#{name} is jumping"
		sleep
	end
	
	private
	def eat
		puts "#{name} is eating"
	end

	def sleep
		puts "#{name} is sleeping"
	end

end

class Dog < Animal
	def initialize (name)
		super "#{name}"
	end
	def bark
		eat
		puts 'Woof-woof'
		sleep
	end
	
end

animal = Animal.new 'Barsik'
animal.jump

dog = Dog.new 'Bonia'
dog.bark
dog.jump