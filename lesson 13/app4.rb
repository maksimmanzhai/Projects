#lesson 13

def show_book book
	puts "======================<br>"
	book.keys.each do |key|
		age = book[key]
		puts "Name #{key}, age <b>#{age}</b> </br>"
	end
	puts "======================"
end

book1 = {'Mike' => 65, 'Lars' => 25}

book2 = {'Walter' => 55, 'Hank' => 50, 'Saul' => 40}

book3 = book1.merge! book2
puts "<body>"
show_book book3
puts "</body>"