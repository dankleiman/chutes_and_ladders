require_relative 'board'
require_relative 'player'
require_relative 'dice'

player1 = Player.new("Joe")
puts "Welcome, #{player1.name}"
board = Board.new
dice = Dice.new

puts board.length

while player1.position < board.length
  puts "#{player1.name} moves"
  player1.position += dice.roll
  if player1.position >= 15
    puts "#{player1.name} wins!"
  else
    puts "New position: #{player1.position}"
  end
end

