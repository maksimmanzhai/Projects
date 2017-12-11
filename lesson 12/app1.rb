#lesson 12
#homework tic-tac

def display (arr)
	puts "___________"
	puts "_||0__1__2_"
	for i in (0...arr.size)
			print "#{i}|"
		for j in (0...arr[i].size)
			print "|#{arr[i][j]}|"
		end
		print "\n"
	end
end

def winner (arr)
	for i in (0...arr.size)	
		if arr[i][0] != ' ' && arr[i][0] == arr[i][1] && arr[i][1] == arr[i][2] && arr[i][0] == arr[i][2]
			puts "Win #{i + 1} string!"
			exit
		end
		if arr[0][i] != ' ' && arr[0][i] == arr[1][i] && arr[1][i] == arr[2][i] && arr[0][i] == arr[2][i]
			puts "Win #{i + 1} collumn!"
			exit
		end
	end
	if arr[0][0] != ' ' && arr[0][0] == arr[1][1] && arr[1][1] == arr[2][2] && arr[0][0] == arr[2][2]
		puts "Win first diagonal!"
		exit
	end
	if arr[2][0] != ' ' && arr[2][0] == arr[1][1] && arr[1][1] == arr[0][2] && arr[2][0] == arr[0][2]
		puts "Win second diagonal!"
		exit
	end
end

grid = [[' ', ' ', ' ' ], [' ', ' ', ' ' ], [' ', ' ', ' ' ]]
display grid

loop do
	loop do
		puts "Enter x (0-2)"
		player_x = gets.chomp.to_i
		if player_x != 0 && player_x != 1 && player_x != 2
			puts "Enter x (1-3)"
			player_x = gets.chomp.to_i
		end
		puts "Enter y (0-2)"
		player_y = gets.chomp.to_i
		if player_y != 0 && player_y != 1 && player_y != 2
			puts "Enter y (1-3)"
			player_y = gets.chomp.to_i
		end
		if grid[player_y][player_x] != ' '
			puts "Enter empty grid"
		else
			grid[player_y][player_x] = "X"
			break
		end
	end

	display grid
	winner grid

	loop do
		comp_x = rand(0..2)
		comp_y = rand(0..2)
		puts "Computer turn: "
		if grid[comp_y][comp_x] != ' '
			puts "Loading...."
		else
			grid[comp_y][comp_x] = "O"
			break
		end
	end
	
	display grid
	winner grid
end