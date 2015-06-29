require 'pry'

# Create the deck of cards to deal
suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
@cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'K', 'Q', 'A' ]
@deck = suits.product(@cards)
@deck.shuffle!

def calculate_total(cards)
  arr = cards.map{|e| e[1]}

  total = 0
  arr.each do |value|
    if value == 'A'
      total += 11
    elsif value.to_i == 0 # Jack, Queen, or King
      total += 10
    else
      total += value.to_i
    end

    arr.select{|e| e =='A'}.count.times do
      total -= 10 if total > 21
    end
  end

    total
end

def welcome(name)
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Welcome to Camden's Blackjack table!"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "What is your name?"
  @name = gets.chomp
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Welcome, #{@name} and goodluck!"
  puts " "
end

def player_hit_or_stay(choice)
  puts " "
  puts "So #{@name}, what would you like to do?... ( hit or stay )"
  player_choice = gets.chomp
  while player_choice != 'hit' || player_choice != 'stay'
    if player_choice == 'hit'
      new_card = @deck.pop
      puts " "
      puts "#{@name} has received: #{new_card}"
      @player_cards << new_card
      @player_total = calculate_total(@player_cards)
      puts " "
      puts "Your total is: #{@player_total}"
      puts " "
      bust(@player_total)#Call method to say you busted if your total is greater than 21
      if @player_total < 21
        puts ""
      end
      break
    elsif player_choice == 'stay'
      show_cards(@cards)
      bust(@playertotal)
      break
    else
      puts "Sorry, 'run' wasn't an option....you can only choose ( hit or stay)"
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end
  end
end

def bust(choice)
  if @playertotal > 21
    puts "#{@name}, you BUSTED!"
  elsif @dealertotal > 21
    puts "The dealer has busted!"
  elsif @playertotal == 21
    puts "#{@name}, got a Blackjack!!!"
  elsif @dealertotal == 21
    puts "The dealer got a Blackjack!"
  end

  if @playertotal < @dealertotal
    puts "#{@name}, you lost!"
  elsif @player_total == @dealertotal
    puts "It's a tie!!"
  else
    puts "#{@name}, you WON!!"
  end
end

def show_cards(cards)
  puts " "
  puts "Looks like the dealer has #{@dealer_cards[0]} and #{@dealer_cards[1]}... that's #{@dealertotal}"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Looks like #{@name} has #{@player_cards[0]} and #{@player_cards[1]}... that's #{@playertotal}"
  puts " "
end

@player_cards = []
@dealer_cards = []

2.times do
  @player_cards << @deck.pop
  @dealer_cards << @deck.pop
end

@dealertotal = calculate_total(@dealer_cards)
@playertotal = calculate_total(@player_cards)

greeting = welcome(greeting)
score = show_cards(score)
choice = player_hit_or_stay(choice)
