#lesson 14

class Book

	attr_reader :last_person

	def initialize
		@hh = {}
		@last_person = ''
	end

	def add_person options
		puts "This person is in hash" if @hh[options[:name]]
		@last_person = options[:name]
		@hh[options[:name]] = options[:age]
	end

	def show_all
		@hh.keys.each do |key|
			age = @hh[key]
			puts "Name: #{key}, age: #{age}"
		end
	end
	
end

a = Book.new
a.add_person :name => 'Walt', :age => 50
a.add_person :name => 'Jessie', :age => 30
a.add_person :name => 'Badger', :age => 25
a.show_all
puts "Last person is #{a.last_person}"