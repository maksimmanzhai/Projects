#lesson 11

dict = { 	'dog' => 'sobaka',
					'cat' => 'koshka',
					'bird' => 'popugai',
					'cow' => 'korova' }

loop do
	print "Enter your word: "
	word = gets.chomp
	if word == ''
		puts "You enter empty string"
		break
	end
	puts "Translate #{word} is #{dict[word]}"
end