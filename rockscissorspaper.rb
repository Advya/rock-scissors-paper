arr1 = ["rock", "scissors", "paper"]

puts "ИГРАЕМ В КАМЕНЬ НОЖНИЦЫ БУМАГА:"
puts "==============================="

print "Пиши что выбрал (камень = 1, ножницы = 2, бумага = 3): "
answer = gets.strip.to_i
if answer > 3 || answer < 1
	puts "Введи нормально число от 1 до 3"
	exit
end

answer = answer - 1
puts "Твой выбор: #{arr1[answer]}"

a = rand(0..arr1.length-1)

puts "А я выбрал: #{arr1[a]}"
# Это ничья
if answer == a
	puts "У нас ничья"
end
# Это победа игрока
if (answer == 0 && a == 1) || (answer == 1 && a == 2) || (answer == 2 && a == 0)
	puts "Ты победил :("
end
# Это победа программы
if (answer == 1 && a == 0) || (answer == 2 && a == 1) || (answer == 0 && a == 2)
	puts "ХА, я победил! :)"
end