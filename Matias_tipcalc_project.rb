#Asks the total bill amount
def ask_total(question)
  puts question
  gets.chomp.to_f.round(2)
end

#Asks the tip percentage
def tip_percent(question)
  puts question
  tip_percentage = gets.chomp.to_f
  if tip_percentage > 1
	tip_percentage = (tip_percentage/100)
	end
tip_percentage.to_f.round(10)
end

#Ask the number of people
def ask_number(question)
	puts "What is the total number of people you would like to split it by?"
	gets.chomp.to_i.round
end

#This puts a line break of a specific character and length
def put_a_line_of_character_size(character, number)
  puts character * number
end

#Calculates tip percentage and tells you what you owe
def tip_calc(total_bill, tip_percentage, number_of_people)
tip = (total_bill*tip_percentage)/number_of_people
amount_due = (total_bill/number_of_people) + tip
tip = tip.round(2)
amount_due = amount_due.round(2)
puts "Your tip = #{tip}"
puts "You owe a total of #{amount_due}"
end

#START OF CODE

system("clear")

total_bill = ask_total("What is your total bill amount?")
puts "Total bill = #{total_bill}"
tip_percentage = tip_percent ("What percent tip would you like to leave?")
puts "Tip percentage = #{tip_percentage}"
number_of_people = ask_number("How many people would you like to split the bill with?")
puts "Number of people = #{number_of_people}"

put_a_line_of_character_size("~",75)


tip_calc(total_bill, tip_percentage, number_of_people)

#this is a modification for GitHub Wyncode exercises purpose.

