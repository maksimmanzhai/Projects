
#5. all save contacts will add to ./public/contacts.txt
#6. choise on /visit chairman with select
#7. save data to file
#8. access for admin with password

require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
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
	@textarea = params[:textarea1]
	@visits = File.open './public/users.txt', 'a'
	@visits.write "User: #{@username},\tPhone: #{@phone},\tDate and time: #{@datetime}\n"
	@visits.close
	@message = "Dear #{@user_name}, phone #{@phone} we'll be waiting for you at #{@date_time}"
	erb :message
	@contacts = File.open './public/contacts.txt', 'a'
	@contacts.write "#{@phone}\n"
	@contacts.close
end