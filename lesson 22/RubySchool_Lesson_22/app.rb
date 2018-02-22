
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
	@textarea = params[:textarea]
	@chairman = params[:chairman] 
	@visits = File.open './public/users.txt', 'a'
	@visits.write "User: #{@username},\tPhone: #{@phone},\tDate and time: #{@datetime}\tTextarea: #{@textarea}\tChairman: #{@chairman}\n"
	@visits.close

	@message = "Dear #{@user_name}, phone #{@phone} we'll be waiting for you at #{@datetime}. Yor chairman is #{@chairman}"
	erb :message

end