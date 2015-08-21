# 1. Have detailed requirements
# 2. Extract major nouns -> classes
# 3. Extract major verbs -> instance methods
# 4. Group instance methods into classes

class BlackJack
  attr_accessor :player, :dealer, :deck

  def initialize
    @player = Player.new('')
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def run
    deal_cards
    show_flow
    player_turn
    dealer_turn
    who_won?
  end

end

class Card
  attr_accessor :suit, :value

  def initialize(s, v)
    @suit = s
    @value = v
  end

end

class Deck
  attr_accessor :cards

  def initialize
    @cards = ['Hearts', 'Diamonds', 'Spades', 'Clovers'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'K', 'Q', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end

    cards.shuffle_deck
  end

  def shuffle_deck
    cards.shuffle!
  end

  def deal

  end

end

class Dealer

end

class Player

end
