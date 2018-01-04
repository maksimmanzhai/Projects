#lesson 15

class Song
	attr_accessor :name
	attr_accessor :duration

	def initialize name, duration
		@name = name
		@duration = duration
	end

end

song1 = Song.new 'The show must go on', 5
puts song1.name
puts song1.duration