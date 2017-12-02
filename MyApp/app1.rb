# encoding: cp866

print "Вы довольны своей зарплатой? (1 - yes / 0 - no )"
answer = gets.to_i

#2 сделать чувствиетельным к пробелам

if answer == 1
	print "Очень хорошо"
end
	
if	 answer == 0
		print "Очень плохо"
end