def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end 

def input_to_index(r)
    
     int=r.to_i
     index=int-1
     
     return index
end     
 def valid_move?(board, index)
   if index >=0 && index <= 8
     if board[index]=="X" || board[index]=="O"
        return false
      else
        return true
      end  
    else
        return false
    end
  
end

 def move(board, index,t)
     board[index]=t
     return board
 end

 def turn(board)
 puts "please enter 1-9 : "
  board[index]=""
  r=gets.chomp
  input_to_index(r)
  n=valid_move?(board, index)
  if n == true
     puts "please enter X or O"
     t=gets.chomp
     move(board, index,t)  
     display_board(board) 
     turn(board)
    
  else
    until n==true
         puts "this place is occupied"
         turn(board)
     end 
  end
end     

 

