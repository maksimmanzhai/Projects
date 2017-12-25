#lesson 13

@hh = {}

def add_person options
	puts "This person is in hash" if @hh[options[:name]]
	@hh[options[:name]] = options[:age]
end

def show_hash
	@hh.keys.each do |key|
		age = @hh[key]
		puts "Name: #{key}, age: #{age}"
	end
end

loop do
	puts "Enter name or empty for exit"
	name = gets.strip
	if name == ''
		show_hash
		exit
	end
	puts "Enter age"
	age = gets.to_i
	
	add_person :name =>name, :age => age
end