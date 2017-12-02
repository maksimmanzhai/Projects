#lesson 11
#2. Создать массив имен с помощью %w[...], вывести все имена с порядковым номером с 
#   помощью arr.each_with_index - для тех, кто не сделал.

arr = %w[lol, kek, cheburek]

arr.each_with_index do |item, i|
	puts "#{i} #{item}"
end