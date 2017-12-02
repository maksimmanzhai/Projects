#lesson 11

arr = [] #array

hh = 	{	'Mike' => '35373',
				'Jessie' => '31380',
				'Walter' => '31269'
			} #hash

puts "Number of Mike is #{hh['Mike']}"

options = { 
						:font_size => 10,
 						:font_family => 'Arial',
  					:arr => [1, 5, 2]
  				}

x = options[:font_size]

puts "Selected font size #{x}"

hh['Hank'] = '34567'

puts hh