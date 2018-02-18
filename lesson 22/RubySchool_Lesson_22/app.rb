#1. add POST for visit
#2. add data to ./public/users.txt
#3. add /contacts with email, message
#4. watch html-element textarea
#5. all save contacts will add to ./public/contacts.txt
#6. choise on /visit chairman with select
#7. save data to file
#8. access for admin with password
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello!!! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
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