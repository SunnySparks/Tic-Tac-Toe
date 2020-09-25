class Board
  attr_accessor :board

  def initialize
    reset!
  end

  def reset!
    @board =[1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    "    #{@board[0]}(1) | #{@board[1]} (2)  |#{@board[2]}(3)
  ______________________
    #{@board[3]}(4) | #{@board[4]} (5)  |#{@board[5]}(6)
  ______________________
    #{@board[6]}(7) | #{@board[7]} (8)  |#{@board[8]}(9)"
  end

  def next_player(current_player, turn)
    if current_player == turn[1]
      turn[0]
    elsif current_player == turn[0]
      turn[1]
    end
  end
  def full
    @board.all?(String)
  end
  def taken?(input)
    if @board [input] == 'X' || @board[input] == 'O'
      false
    else
      true
    end
  end

  def valid_move?(input)
    input.to_i.between?(1, 9) && !taken?(input)
  end

  def update(input, player)
    board[input] = player.token
  end
end
