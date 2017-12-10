#lesson 10
def get_command
	actions = [:left, :right, :up, :down]
	cmd = actions[rand(0..3)]
end

command = get_command

puts "Get command: #{command}"

puts "Robot drive to #{command}"