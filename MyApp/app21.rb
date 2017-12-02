#lesson 11
#3. Англо-русский словарь - то, что на уроке делали. Простой вариант.

#4. Сложный англо-русский словарь - с несколькими вариантами перевода для каждого слова. 
#   Использовать хэши вида hh = {'cat' => ['кот', 'кошка'], ...}, 
#   где ключ - это строка, а значение - массив. Словарь будет выводить: 
#   количество переводов слова; сами переводы слова. Вывод: Количество 
#   переводов слова: 2 Переводы: кот кошка

dict = 
	{
		'grandfather' => ['ded', 'dedushka'],
		'grandmother' => ['babka', 'babushka','babuliya'],
		'dog' => ["sobaka", 'sobaken'],
		'cat' => ['koshka', 'kot'],
		'mouse' => ['mysh']
	}

loop do 
	puts "Enter word for translate. Enter empty for exit"
	word = gets.chomp
	if word == ""
		exit
	end
	puts "#{word} - This is #{dict[word].count} variable of translate: "   
	puts dict[word]
end