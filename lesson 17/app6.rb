input = File.open "test2.txt", "w"

while (line = input.gets)
	puts line
	
end
input.close