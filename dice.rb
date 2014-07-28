class Dice
  attr_reader :roll

  def roll
    rand(1..6)
  end

end
