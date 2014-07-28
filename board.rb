class Board < Array
  attr_reader :board

  def initialize
    @board = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
  end

  def length
    @board.length
  end


end
