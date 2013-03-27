puts "How far is your drive in miles?"
distance = gets.chomp.to_f

puts "How many MPG does your car get?"
mpg = gets.chomp.to_f

puts "What is the current price per gallon?"
gasprice = gets.chomp.to_f

puts "What average speed will you drive at, in MPH?"
mph = gets.chomp.to_f

hours = distance / mph
hours = hours.to_f

if mph <= 60
	cost = (distance / mpg) * gasprice 
else 
	mpg = mpg - ((mph-60) * 2) 
	cost = (distance / mpg) * gasprice
end

puts "Your trip will take #{hours} hours and it will cost you $#{cost}." 