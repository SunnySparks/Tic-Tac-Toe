#!/usr/bin/env ruby
require_relative 'player1.rb'
require_relative 'board.rb'





puts "Hello and welcome to Tic Tac Toe Game."
puts "Player 1: enter your name "
name_one = gets.chomp
player_x = Player.new(name_one, 'X')
puts "Player 1: #{name_one}, your token is 'X' "
puts "Player 2: enter your name "
name_two = gets.chomp
player_o = Player.new(name_two, 'O')
puts "Player 2: #{name_two}, your token is 'O' "

  board = Board.new
  win = Board.new.winner
  puts board.display_board
  arr_players = [player_x, player_o]
  current_player = arr_players[0]
  turn =1
while turn <=9
  win
  puts "pick a number 1-9"
  input= gets.chomp.to_i-1
  if input > 8
    puts "Invalild movement, please select a number from 1 to 9"
  else
  if board.taken?(input) 
      board.update(input, current_player)
      current_player = board.next_player(current_player, arr_players)
  else
      puts "Position taken, please choose another one: "
    end
  end
 board.display_board
turn +=1

end