
#3. sinatra format phone
#4. sinatra date calendar

require 'sinatra'

get '/' do
	erb :index
end

get '/admin' do
	erb :admin
end

post '/' do
	@user_name = params[:user_name]
	@phone = params[:phone]
	@date_time = params[:date_time]

	@title = 'Thank you!'
	@message = "Dear #{@user_name}, phone #{@phone} we'll be waiting for you at #{@date_time}"
	erb :message

	@f = File.open 'users.txt', 'a'
	@f.write "User: #{@user_name}, \tPhone: #{@phone}, \tDate and time: #{@date_time} \n"
	@f.close
	erb :message
end

post '/admin' do
	@login = params[:login]
	@password = params[:password]

	if @login == 'admin' && @password == '12345'
		@logfile = File.read("users.txt")
		erb :list_of_users
	elsif @login == 'admin' && @password == 'admin'
		@message = 'Haha! Nice try! Access denied.'
	else
		@message = 'Access denied'
		erb :index
	end
end