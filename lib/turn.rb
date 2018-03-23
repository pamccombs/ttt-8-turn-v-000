#TURN
def turn(board)
  puts "Please enter 1-9:" 
  input = gets.strip
  index = input_to_index(input)


  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    until valid_move?(board, index) == true
    turn(board)
      break
    end
  end
end


#DISPLAY_BOARD

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#INPUT_TO_INDEX

def input_to_index(input)
  input.to_i - 1
end

#MOVE

def move(array, index, value = "X")
  array[index] = value
end 


#VALID_MOVE

def valid_move?(board, index)
  
   
  !position_taken?(board, index) && index.between?(0, 8)
  
end

#POSITION_TAKEN

def position_taken?(board, index)
  
 if board[index] == " " || board[index] == "" || board[index] == nil
    false
     elsif board[index] == "X" || board[index] == "O"
    true
     elsif board[index] == "X" || "O"
    true
  else
    false
  end
end