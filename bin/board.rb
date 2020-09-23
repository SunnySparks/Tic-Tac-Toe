class Board
    attr_accessor :board

    def initialize
       reset!
      
    end

    def reset!
      @board = Array.new ([" ", " ", " ", " ", " ", " ", " ", " ", " "])
    end 

    def display_board
        puts "#{@board[0]}(1) | #{@board[1]} (2)  |#{@board[2]}(3)"
        puts '______________________'
        puts "#{@board[3]}(4) | #{@board[4]} (5)  |#{@board[5]}(6)"
        puts '______________________'
        puts "#{@board[6]}(7) | #{@board[7]} (8)  |#{@board[8]}()"
      end

      @win = false 
      
      def winner
        @win = true if (@board[0] == @board[1]) &&
        (@board[1] == @board[2])
        @win = true if (@board[3] == @board[4]) &&
        (@board[4] == @board[5])
        @win = true if (@board[6] == @board[7]) &&
        (@board[7] == @board[8])
      end
     
      def next_player(current_player, turn)
        if current_player == turn[1]
         turn[0]
        elsif current_player ==turn[0]
         turn[1]
        end
      end
   
        def full
          @board.all?(String)
        end
def turn_count
  board.turn_count{|char| char == "X" || char == "O" }
  end

    def taken? (input)
    if  @board [input]== "X" || @board[input]== "O"
      false
      else
        true
      end 
    end

    def valid_move? (input)
      input.to_i.between?(1,9) && !taken?(input)
      end

      def update (input, player)
        board[input] = player.token
  end
end
 