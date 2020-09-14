class The_board
    attr_reader :board
    def initialize(board=nil)
        @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
    def display_board
        "        #{@board[0]}(0) | #{@board[1]}(1)   |#{@board[2]}(2)\n
        ______________________\n
        #{@board[3]}(3) | #{@board[4]}(4)   |#{@board[5]}(5)\n
        ______________________\n
        #{@board[6]}(6) | #{@board[7]}(7)   |#{@board[8]}(8)"
    end
end

puts The_board.new.display_board
