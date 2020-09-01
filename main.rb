# frozen_string_literal: true

puts '

_______ _          _______             _______
|__   __(_)        |__   __|           |__   __|
   | |   _  ___ ______| | __ _  ___ ______| | ___   ___
   | |  | |/ __|______| |/ _` |/ __|______| |/ _ \ / _ \
   | |  | | (__       | | (_| | (__       | | (_) |  __/
   |_|  |_|\___|      |_|\__,_|\___|      |_|\___/ \___|

'
#In this section, we will prompt the users' names to be identified
puts "Insert name for Player X"
player_x = gets.chomp
puts "Alrigth #{player_x}, you will be the Xs"
puts
puts "Insert name for Player O"
player_o = gets.chomp
puts "And #{player_o}, you will be the Os"
puts

def display_board(ttt_board)
  puts "#{ttt_board[0]}(0) | #{ttt_board[1]}(1)   |#{ttt_board[2]}(2)"
  puts '______________________'
  puts "#{ttt_board[3]}(3) | #{ttt_board[4]}(4)   |#{ttt_board[5]}(5)"
  puts '______________________'
  puts "#{ttt_board[6]}(6) | #{ttt_board[7]}(7)   |#{ttt_board[8]}(8)"
end

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']


#Player 1 will pick a number
puts "#{player_x} pick a number 0-8"
#The board is displayed so the user can see which number he will pick
display_board(board)
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

#Here the program shows the selection of player 1
x_picked = gets.chomp
token_x = 'X'
board[x_picked.to_i] = token_x
puts
puts "#{player_x} chose #{x_picked.to_i}"
display_board(board)
puts

#It is player 2's turn to pick a number
puts "#{player_o} pick a number 0-8"
display_board(board)
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

#Here is displayed the selection of player 2
o_picked = gets.chomp
token_o = 'O'
board[o_picked.to_i] = token_o
puts
puts "#{player_o}  chose #{o_picked.to_i}"
display_board(board)
