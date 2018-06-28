require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'pony'
require 'sqlite3'

configure do
	@db = SQLite3::Database.new 'barbershop.db'
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

post '/contact' do
	
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	@visits = File.open './public/users.sqlite', 'a'
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

	erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"





end