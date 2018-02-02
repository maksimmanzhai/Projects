require 'net/http'
require 'uri'

def is_wrong_password password
	uri = URI.parse 'http://http://192.168.0.1//'
	responce = Net::HTTP.post_form(uri, :Username => "admin", :psw => "").body
	return responce.include? "Denied"
end

puts is_wrong_password "qwerty"