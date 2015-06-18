puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

if number < 0
  puts "#{number}negative numbers SHALL PASS!"
elsif number <= 50
  puts "#{number} is between 0 and fifty"
elsif number <= 100
 puts "#{number} is between 50 and 100"
else
  puts "#{number} is above a hundred"
end
