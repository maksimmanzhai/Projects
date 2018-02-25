require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/admin' do
	erb :admin
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

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@textarea = params[:textarea]
	@chairman = params[:chairman] 
	@visits = File.open './public/users.txt', 'a'
	@visits.write "User: #{@username},\tPhone: #{@phone},\tDate and time: #{@datetime}\tTextarea: #{@textarea}\tChairman: #{@chairman}\n"
	@visits.close

	@message = "Dear #{@username}, phone #{@phone} we'll be waiting for you at #{@datetime}. Yor chairman is #{@chairman}"
	erb :message
end

post '/admin' do
	@login = params[:login]
	@password = params[:password]

	if @login == 'admin' && @password == '12345'
		@logfile = File.read("./public/users.txt")
		#erb :list_of_users
	else
		@message = 'Access denied'
		erb :admin
	end
end