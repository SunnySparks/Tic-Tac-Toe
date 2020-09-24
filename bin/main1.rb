#!/usr/bin/env ruby

puts '
_______ _          _______             _______
|__   __(_)        |__   __|           |__   __|
   | |   _  ___ ______| | __ _  ___ ______| | ___   ___
   | |  | |/ __|______| |/ _` |/ __|______| |/ _ \ / _ \
   | |  | | (__       | | (_| | (__       | | (_) |  __/
   |_|  |_|\___|      |_|\__,_|\___|      |_|\___/ \___|
   \n
   '
require_relative '../lib/board.rb'
# In this section, we will prompt the users' names to be identified
puts 'Insert name for Player X'
player_x = gets.chomp
puts "Alrigth #{player_x}, you will be the Xs"
puts
puts 'Insert name for Player O'
player_o = gets.chomp
puts "And #{player_o}, you will be the Os"
puts

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
turns = 1

winner_x = false
winner_o = false


def if_wins(winner, player, b)
    if winner == true
      p "winner #{player} wins!"
      puts TheBoard.new.display_board
    end
end


def empty_validation
  for i in 0..board.length
    if board[x_picked.to_i] == "X"
      puts "X wrong choice, pick another number #{board[x_picked.to_i]}"
      x_picked = gets.chomp
    elsif board[x_picked.to_i] == "O"
      puts "O wrong choice, pick another number #{board[x_picked.to_i]}"
      x_picked = gets.chomp
    else
      token_x = 'X'
      board[x_picked.to_i] = token_x
      break
    end
  end
end


while turns < 9 &&( winner_x == false && winner_o == false ) 

  # Player 1 will pick a number
  puts "Turn number #{turns}, it's #{player_x}'s turn'"
  puts
  puts TheBoard.new.display_board
  puts "#{player_x} pick a number 0-8"
  x_picked = gets.chomp
  IfItsEmpty
  board[x_picked.to_i] = token_x
  puts
  turns +=1
winner_x = true if (board[0] == 'X') &&
                     (board[0] == board[1]) &&
                     (board[1] == board[2])
  winner_x = true if (board[3] == 'X') &&
                     (board[3] == board[4]) &&
                     (board[4] == board[5])
  winner_x = true if (board[6] == 'X') &&
                     (board[6] == board[7]) &&
                     (board[7] == board[8])
  winner_x = true if (board[0] == 'X') &&
                     (board[0] == board[3]) &&
                     (board[3] == board[6])
  winner_x = true if (board[1] == 'X') &&
                     (board[1] == board[4]) &&
                     (board[4] == board[7])
  winner_x = true if (board[2] == 'X') &&
                     (board[2] == board[5]) &&
                     (board[5] == board[8])
  winner_x = true if (board[6] == 'X') &&
                     (board[6] == board[4]) &&
                     (board[4] == board[2])
  winner_x = true if (board[8] == 'X') &&
                     (board[8] == board[4]) &&
                     (board[4] == board[0])
  if_wins(winner_x, player_x, board)
  return player_x if winner_x == true
  # Here the program shows the selection of player 2
  puts "Turn number #{turns}, it's #{player_o}'s turn'"
  puts
  puts TheBoard.new.display_board
  puts "#{player_o} pick a number 0-8"
  o_picked = gets.chomp
  token_o = 'O'
  for i in 0..board.length
    if board[o_picked.to_i] == "X"
      puts "X wrong choice, pick another number #{board[o_picked.to_i]}"
      o_picked = gets.chomp
    elsif board[o_picked.to_i] == "O"
      puts "O wrong choice, pick another number #{board[o_picked.to_i]}"
      o_picked = gets.chomp
    else
      token_o = 'O'
      board[o_picked.to_i] = token_o
      break
    end
  end
  puts
  puts "#{player_o}  chose #{o_picked.to_i}"
  turns += 1
  puts

  winner_o = true if (board[0] == 'O') &&
                     (board[0] == board[1]) &&
                     (board[1] == board[2])
  winner_o = true if (board[3] == 'O') &&
                     (board[3] == board[4]) &&
                     (board[4] == board[5])
  winner_o = true if (board[6] == 'O') &&
                     (board[6] == board[7]) &&
                     (board[7] == board[8])
  winner_o = true if (board[0] == 'O') &&
                     (board[0] == board[3]) &&
                     (board[3] == board[6])
  winner_o = true if (board[1] == 'O') &&
                     (board[1] == board[4]) &&
                     (board[4] == board[7])
  winner_o = true if (board[2] == 'O') &&
                     (board[2] == board[5]) &&
                     (board[5] == board[8])
  winner_o = true if (board[6] == 'O') &&
                     (board[6] == board[4]) &&
                     (board[4] == board[2])
  winner_o = true if (board[8] == 'O') &&
                     (board[8] == board[4]) &&
                     (board[4] == board[0])

  if_wins(winner_o, player_o, board)
  return player_o if winner_o == true
end

if winner_x == false && winner_o == false
  p "It's a tie"
end