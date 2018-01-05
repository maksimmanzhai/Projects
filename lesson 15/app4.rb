#lesson 15

class Artist
	attr_reader :name
	attr_reader	:albums

	def initialize(name)
		@name = name
		@albums = []
	end

	def add_album album
		@albums << album
	end	
	
end

class Album
	attr_reader :title
	attr_reader	:tracks

	def initialize(title)
		@title = title
		@tracks = []
	end

	def add_track track
		@tracks << track
	end	
	
end

class Track
	attr_reader :title
	attr_reader :duration

	def initialize(title, duration)
		@title = title
		@duration = duration
	end

end
artists = []
artist1 = Artist.new 'AAA'
artist2 = Artist.new 'BBB'

artists << artist1
artists << artist2

album1 = Album.new 'xxx'
album2 = Album.new 'yyy'

artist1.add_album album1
artist2.add_album album2

track0 = Track.new 'qza', 75
track1 = Track.new 'qwe', 100
track2 = Track.new 'rty', 125
track3 = Track.new 'uio', 150
track4 = Track.new 'asd', 175
track5 = Track.new 'fgh', 200
track6 = Track.new 'hjk', 225
track7 = Track.new 'zxc', 250
track8 = Track.new 'vbn', 275
track9 = Track.new 'mlp', 300

album1.add_track track0
album1.add_track track1
album1.add_track track2
album1.add_track track3
album1.add_track track4

album2.add_track track5
album2.add_track track6
album2.add_track track7
album2.add_track track8
album2.add_track track9

artists.each do |artist|
	puts "Artist: #{artist.name}"
	artist.albums.each do |album|
		puts "Album: #{album.title}"
		album.tracks.each do |track|
			puts "Track: #{track.title}, #{track.duration}"
		end
	end
	puts ''
end