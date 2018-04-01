require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'pony'

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

	Pony.options = { :from => 'noreply@example.com', :via => :smtp, :via_options => { :host => 'smtp.yourserver.com' } }
	Pony.mail(:to => 'bender23max@gmail.com') # Sends mail to foo@bar from noreply@example.com using smtp
end


post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

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