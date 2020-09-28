# rubocop: disable Metrics/PerceivedComplexity
# rubocop: disable Metrics/CyclomaticComplexity
# rubocop: disable Metrics/AbcSize
class Board
  attr_reader :board

  def initialize
    reset!
  end

  def reset!
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    "    #{@board[0]}(1) | #{@board[1]} (2)  |#{@board[2]}(3)
  ______________________
    #{@board[3]}(4) | #{@board[4]} (5)  |#{@board[5]}(6)
  ______________________
    #{@board[6]}(7) | #{@board[7]} (8)  |#{@board[8]}(9)"
  end

  def win
    @win = false
    @win = true if @board[0] == @board[1] && @board[1] == @board[2]
    @win = true if @board[0] == @board[4] && @board[4] == @board[8]
    @win = true if @board[0] == @board[3] && @board[3] == @board[6]
    @win = true if @board[1] == @board[4] && @board[4] == @board[7]
    @win = true if @board[2] == @board[4] && @board[4] == @board[6]
    @win = true if @board[2] == @board[5] && @board[5] == @board[8]
    @win = true if @board[3] == @board[4] && @board[4] == @board[5]
    @win = true if @board[6] == @board[7] && @board[7] == @board[8]
    @win
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

# rubocop: enable Metrics/PerceivedComplexity
# rubocop: enable Metrics/CyclomaticComplexity
# rubocop: enable Metrics/AbcSize
