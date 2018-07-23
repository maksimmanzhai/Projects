require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def is_barber_exist? db, name
	db.execute('SELECT * FROM Barbers WHERE name=?', [name]).length > 0
end

def seed_db db, barbers
	barbers.each do |barber|
		if !is_barber_exist? db, barber
			db.execute 'INSERT INTO Barbers (name) VALUES (?)', [barber]
		end
	end
end

def get_db
	db = SQLite3::Database.new "barbershop.db"
	db.results_as_hash = true
	return db
end


before do
	db = get_db
	@barbers = db.execute 'SELECT * FROM Barbers'
end

configure do
	db = get_db
	db.execute 'CREATE TABLE IF NOT EXISTS
		"Users" 
		(
			"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
			"username" TEXT,
			"phone" TEXT,
			"datestamp" TEXT,
			"barber" TEXT,
			"color" TEXT
		)'

		db.execute 'CREATE TABLE IF NOT EXISTS
		"Barbers" 
		(
			"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
			"name" TEXT
		)'

		seed_db db, ['Jessie Pinkman', 'Walter White', 'Gus Fring', 'Eric Ermantraut' ]

		db.close
end

get '/' do 
		erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
	
end

get '/showusers' do
	erb :showusers
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	@visits = File.open './public/users.txt', 'a'
	@visits.write "User: #{@username},\tPhone: #{@phone},\tDate and time: #{@datetime}\tTextarea: #{@textarea}\tChairman: #{@chairman}\n"
	@visits.close
	
	# хеш
	hh = {:username => 'Enter name', 
				:phone => 'Enter phone', 
				:datetime => 'Enter date and time'}

	@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

	if @error != ''
		return erb :visit
	end

	db = get_db
	db.execute 'INSERT INTO 
		Users 
			( 
				username, 
				phone,
				datestamp,
				barber,
				color
			)
		values( ?, ?, ?, ?, ?)', [@username, @phone, @datetime, @barber, @color]

	erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"

end