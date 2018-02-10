require 'sinatra'

get '/' do
	erb :index
end

post '/' do
	@user_name = params[:user_name]
	@phone = params[:phone]
	@date_time = params[:date_time]

	@title = 'Thank you!'
	@message = "Dear #{@user_name}, phone #{@phone} we'll be waiting for you at #{@date_time}"
	erb :message

	f = File.open 'users.txt', 'a'
	f.write "User: #{@user_name}, \tPhone: #{@phone}, \tDate and time: #{@date_time}\n"
	f.close
	erb :message
end