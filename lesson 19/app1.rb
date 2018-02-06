require 'sinatra'

get '/' do 
	erb :index
end

get '/contacts' do 
	@title = 'Contacts'
	@message = 'Phone number: 111222'
	erb :message
end

get '/faq' do 
	@title = 'FAQ'
	@message = 'LOL KEK CHEBUREK'
	erb :message
end

get '/something' do 
	@title = 'Something'
	@message = 'bla bla bla'
	erb :message
end

post '/' do
	@login = params[:aaa]
	@password = params[:bbb]

	if @login == 'admin' && @password == '12345'
		erb :welcome
	elsif @login == 'admin' && @password == 'admin'
		@message = 'Haha! Nice try! Access denied.'
	else
		@message = 'Access denied'
		erb :index
	end
end