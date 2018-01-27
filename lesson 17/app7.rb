# прочитать все строки из файла task1.txt, вывести сумму

input = File.open "task1.txt", "r"
total = 0
while (line = input.gets)
	arr = line.split ","
	value = arr[1].to_i
	
	total = total + value
end

puts "Total: #{total}"