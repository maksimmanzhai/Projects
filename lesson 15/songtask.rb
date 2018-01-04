#lesson 15
#artist 
class Album
	attr_reader :title
	attr_reader :tracks
	def initialize(title)
		@title = title
		@tracks = []	
	end
	def add_track track
		@tracks << track
	end	
end

class Song
	attr_reader :name
	attr_reader :duration

	def initialize(name, duration)
		@name = name
		@duration = duration
	end
end


album1 = Album.new '42'


track1 = Song.new 'lolipop', 300
track2 = Song.new 'tarantino', 200
track3 = Song.new 'goes to mars', 250
track4 = Song.new 'module', 275
track5 = Song.new 'fear the qwerty', 235

album1.add_track track1
album1.add_track track2
album1.add_track track3
album1.add_track track4
album1.add_track track5

puts album1.title
album1.tracks.each do |track|
	puts "Track: #{track.name}, #{track.duration}"
end