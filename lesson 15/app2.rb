#lesson 15
class Country
	attr_reader :name

	def initialize(name)
		@name = name
		@airports = []
	end
	def add_airports airport
		@airports << airport
	end
end

class Airport
	attr_reader :name
	attr_reader :planes
	def initialize(name)
		@name = name
		@planes = []
	end
	def add_plane plane
		@planes << plane
	end
end

class Plane
	attr_reader :model
	def initialize(model)
		@model = model
	end	
end

airportes = []
airport1 = Airport.new 'MSQ'
airport2 = Airport.new 'JFK'

airportes << airport1
airportes << airport2

plane10 = Plane.new 'Airbus'
plane11 = Plane.new 'Il-86'
plane12 = Plane.new 'Tu-154'

airport1.add_plane plane10
airport1.add_plane plane11
airport1.add_plane plane12

plane20 = Plane.new 'Boeing'
plane21 = Plane.new 'Jet'

airport2.add_plane plane20
airport2.add_plane plane21
airport2.add_plane plane10


airportes.each do |airport|
		#show airport name
	puts airport.name
	#show planes in this airport
	airport.planes.each do |plane|
		puts "plane: #{plane.model}"
	end
end