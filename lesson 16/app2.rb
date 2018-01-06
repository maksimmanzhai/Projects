#lesson 16
module App2

	class RandEng
		def self.get_random_value
			rand(1000..5000)
		end
	end

	class GameEng
		def self.play
			@a = RandEng.get_random_value	
		end
		def self.display
			puts @a
		end
	end


end

App2::GameEng.play
App2::GameEng.display