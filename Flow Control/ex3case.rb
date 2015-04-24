

def evaluate_num1(number)
case
  when number < 0
    puts "#{number} negative numbers SHALL PASS!"
  when number <= 50
    puts "#{number} is between 0 and fifty"
  when number <= 100
    puts "#{number} is between 50 and 100"
  when number > 100
    puts "#{number} is above a hundred"
  end
end

def evaluate_num2(number)
  if number < 0
    puts "#{number}negative numbers SHALL PASS!"
  elsif number <= 50
    puts "#{number} is between 0 and fifty"
  elsif number <= 100
    puts "#{number} is between 50 and 100"
  else
    puts "#{number} is above a hundred"
  end
end

puts 'Please enter a number between 0 and 100'
num = gets.chomp.to_i

evaluate_num1(num)
evaluate_num2(num)