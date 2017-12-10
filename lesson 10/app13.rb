#lesson 10

#0 добавить массив с именем и возрастом в массив
#1 add_items
#2 display_items
#3 remove_items

@arr = []

def add_items (n, a)
  arr2 = []
  arr2 << n
  arr2 << a
  @arr << arr2
end

def display_items
  puts "\tList of name:\n\t==============="
  for x in 0...(@arr.size)
    puts "#{x + 1}. #{@arr[x][0]} #{@arr[x][1]}"
  end
end

def remove_items (i)
  @arr.delete_at(i - 1)
end

loop do
  display_items
  puts "Do you want to add or to delete? Enter add or del. \"Enter\" for exit"
  input = gets.chomp.to_s
  case input
    when "add"
      puts "Enter name: "
      name = gets.chomp.to_s.capitalize
      puts "Enter age: "
      age = gets.chomp.to_s
      add_items(name, age)
    when "del"
      puts "Do you want to delete? Enter (1 - #{@arr.size})"
      del = gets.chomp.to_i
      remove_items (del)
    when ""
        exit
    else
      puts "Enter/add/del"
  end
end