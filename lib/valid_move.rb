# code your #valid_move? method here
require 'pry'
def valid_move?(board, index)
  binding.pry
  if index.between?(1, 9)
    if !position_taken?(board, index)
    return true
  else position_taken?(board, index)
    return false
  end
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
if board[index] == " "
  return false
elsif board[index] == ""
  return false
elsif board[index] == nil
  return false
else board[index] == "X" || board[index] == "O"
  return true
end
end
