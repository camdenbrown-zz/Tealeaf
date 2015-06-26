require 'pry'

# Create the deck of cards to deal
suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'K', 'Q', 'A' ]
deck = suits.product!(cards)
deck.shuffle!

# Welcome the player and ask them for their name
def welcome(name)
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Welcome to Camden's Blackjack table!"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "What is your name?"
  name = gets.chomp
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Welcome, #{name} and goodluck!"
end

# Greet the player
greeting = welcome(greeting)

player_cards = []
dealer_cards = []
player_cards << deck.pop
dealer_cards << deck.pop

dealertotal = calculate_total(dealer_cards)
playertotal = calculate_total(player_cards)

def show_cards(cards)
  puts "Looks like the dealer has #{dealer_cards[0]} and #{dealer_cards[1]}... that's #{dealertotal}"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Looks like #{name} has #{dealer_cards[0]} and #{dealer_cards[1]}... that's #{playertotal}"
end

def player_hit_or_stay(choice)
  puts "So #{name}, what would you like to do?... ( hit or stay ?)"
  player_choice = gets.chomp
  if player_choice == 'hit'
    # deal a another card
  elsif player_choice == 'stay'
    # keep cards in hand and let the dealer go
  else
    puts "Sorry, 'run' wasn't an option....you can only choose ( hit or stay)"
    player_hit_or_stay(choice)
  end
end


def calculate_total(cards)
  total = 10
end
