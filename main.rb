puts "

_______ _          _______             _______         
|__   __(_)        |__   __|           |__   __|        
   | |   _  ___ ______| | __ _  ___ ______| | ___   ___ 
   | |  | |/ __|______| |/ _` |/ __|______| |/ _ ) / _ )
   | |  | | (__       | | (_| | (__       | | (_) |  __/
   |_|  |_|(___|      |_|(__,_|(___|      |_|(___/ (___|

"

puts "Insert name for Player X"
player_x = gets.chomp
puts "Insert name for Player O"
player_o = gets.chomp

def display_board (ttt_board)

    puts "#{ttt_board[0]}(0) | #{ttt_board[1]}(1)   |#{ttt_board[2]}(2)"
    puts "______________________"
    puts "#{ttt_board[3]}(3) | #{ttt_board[4]}(4)   |#{ttt_board[5]}(5)"
    puts "______________________"
    puts "#{ttt_board[6]}(6) | #{ttt_board[7]}(7)   |#{ttt_board[8]}(8)"

end



 board = [" ", " ", " ", " ", " ", " "," ", " ", " "]

display_board(board)

puts "#{player_x} pick a number 0-8"
board = [" "," "," "," "," "," "," "," "," "]

x_picked = gets.chomp
token_x ="X"
board[x_picked.to_i] = token_x 
puts "you chose #{x_picked.to_i}"
#display_board(board)


puts "#{player_o} pick a number 0-8"
board = [" "," "," "," "," "," "," "," "," "]

o_picked = gets.chomp
token_o ="O"
board[o_picked.to_i] = token_o 
puts "you chose #{o_picked.to_i}"
#display_board(board)