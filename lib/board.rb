class TheBoard
    attr_reader :grid
    def initialize
        @grid = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
    end
    def display_board
        "        #{@grid[0]}(0) | #{@grid[1]}(1)   |#{@grid[2]}(2)\n
        ______________________\n
        #{@grid[3]}(3) | #{@grid[4]}(4)   |#{@grid[5]}(5)\n
        ______________________\n
        #{@grid[6]}(6) | #{@grid[7]}(7)   |#{@grid[8]}(8)"
    end
end


class TurnValidator
  attr_accessor :token, :turn
  
  def validation(turn, token)
    @turn = turn
    @token = token
    if @turn % 2 == 0
      @token = 'O'
      puts "TurnValidator Token = #{@token} #{@token.class}"
    elsif @turn % 2 == 1 
      @token = 'X'
      puts "TurnValidator Token = #{@token} #{@token.class}"
    end
    end
end


class IfItsEmpty
  attr_reader :board
    def initialize
        @board = TheBoard.new.grid
    end
    turn = 2
    @token = TurnValidator.new
    x_picked = gets.chomp
    9.times do 
    hello = IfItsEmpty.new.board
        if hello[x_picked.to_i] == "X"
          puts "X wrong choice, pick another number #{hello[x_picked.to_i]}"
          x_picked = gets.chomp
        elsif hello[x_picked.to_i] == "O"
          puts "O wrong choice, pick another number #{hello[x_picked.to_i]}"
          x_picked = gets.chomp
=begin else
        TurnValidator 
        puts @token.class
          puts "Turn #{@turn}"
          puts "IfItsEmpty Token = #{@token}"
          hello[x_picked.to_i] = @token
          print hello
          puts
          turn += 1
=end      
end
      



end
end
