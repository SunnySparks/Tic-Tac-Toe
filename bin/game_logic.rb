
class tiro_o
    attr_reader 

    def initialize
    puts "Turn number #{turns}, it's #{player_o}'s turn'"
    display_board(board)
    puts "#{player_o} pick a number 0-8"
    o_picked = gets.chomp
    token_o = 'O'
    board[o_picked.to_i] = token_o
    puts
    puts "#{player_o}  chose #{o_picked.to_i}"
    display_board(board)
    turns += 1
    puts
  end
  
  def comprobacion
    if (ttt_board[0...8] != '') || token > 8
    end
    puts 'invalid move'
  end
end