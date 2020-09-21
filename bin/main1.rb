#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

puts 'Insert name for Player X'
player_x = Player.new(gets.chomp)
puts "Alrigth #{player_x}, you will be the Xs"
puts
puts 'Insert name for Player O'
player_o = Player.new(gets.chomp)
puts "And #{player_o}, you will be the Os"
puts
#The_board.new.display_board

class Play
  def initialize(board=nil)
    @board = The_board.new.display_board
  end
end

Play.new