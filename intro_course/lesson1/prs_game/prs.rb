CHOICES = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}

puts "Welcome to Paper, Rock, Scissors!"

loop do

  begin
    puts "Pick one: (p,r, or s):"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample
  
  if player_choice == computer_choice
    puts "We have a tie, folks!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p') 
    puts "~~~~~The player has won!~~~~~"
    puts "The player chose #{player_choice} and the computer chose #{computer_choice}"
  else
    puts "~~~~Sorry, you lost!~~~~"
    puts "The player chose #{player_choice} and the computer chose #{computer_choice}"
  end

  puts "Would you like to go again? (y/n)"
  break if gets.chomp.downcase != 'y'

end

puts "Thanks for playing!"