# 1. Come up with requirements/specifications, which will determine the scope.
# 2. Application logic: Sequence of steps
# 3. Translation of those steps into code
# 4. Run code to verify logic

# draw a board
#
# assign player1 to "X"
# assign player2 to "O"
#
# loop until a winner or all squares are taken
#   player picks an empty square
#   check for a winner
#   computer picks an empty square
#   check for a winner
#   player picks an empty square
#
# if there is a winner
#   show the winner
# else
#   tie

def initialize_board
  board = {}
  (1..9).each {|position| board[position] = " "} # Creating a hash with each position set to ' '
  board
end

def draw_board(board)
  system "clear"
  puts " #{board[1]}| #{board[2]} |#{board[3]} "
  puts "---------"
  puts " #{board[4]}| #{board[5]} |#{board[6]} "
  puts "---------"
  puts " #{board[7]}| #{board[8]} |#{board[9]} "
end

def player_places_piece(board)
  begin
    puts "Choose a position (from 1 to 9) to place a piece:"
    position = gets.chomp.to_i
  end until empty_positions(board).include?(position)
  board[position] = 'X'
end

def empty_positions(board)
  board.select {|key, value| value == ' '}.keys
end

def computer_picks_square(board)
  position = empty_positions(board).sample
  board[position] = 'O'
end

def check_winner(board)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    return "Player" if board.values_at(*line).count('X') == 3
    return "Computer" if board.values_at(*line).count('O') == 3
  end
  nil
end

def winner_announcement(winner)
  puts "#{winner} won!"
end

def nine_positions_are_filled?(board)
  empty_positions(board) == []
end

board = initialize_board
draw_board(board)

begin
  player_places_piece(board)
  winner = check_winner(board)
  computer_picks_square(board)
  draw_board(board)
end until winner || nine_positions_are_filled?(board)
if winner
  winner_announcement(winner)
else
  puts "It's a tie."
end
