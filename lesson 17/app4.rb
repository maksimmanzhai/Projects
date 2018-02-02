require 'net/http'
require 'uri'

uri = URI.parse 'http://192.168.0.1/'



responce = Net::HTTP.post_form(uri, :Username => "admin", :password => 'm2513745').body
puts responce