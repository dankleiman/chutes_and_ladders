class Board < Array
  attr_reader :board

  def initialize
    @board = [0,0,0,-3,0,0,0,2,1,-4,0,-5,3,0,0]
  end

  def length
    @board.length
  end

  def current_square_value(position)
    @board[position]
  end
end
