require 'net/http'
require 'uri'

uri = URI.parse 'http://sql-ex.ru/'

responce = Net::HTTP.post_form(uri, :login => "maksimmanzhai", :psw => "lo634636l").body

puts responce.include? "Denied"