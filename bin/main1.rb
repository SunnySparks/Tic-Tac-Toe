#!/usr/bin/env ruby
require_relative '../lib/board.rb'

#The_board.new.display_board

class Play
  def initialize(board=nil)
    @board = The_board.new.display_board
  end
end

Play.new