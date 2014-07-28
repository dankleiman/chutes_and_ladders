require_relative 'board'
require_relative 'player'
require_relative 'dice'

player1 = Player.new("Joe")
puts "Welcome, #{player1.name}"
board = Board.new
dice = Dice.new

while player1.position < board.length
  moves = dice.roll
  puts "#{player1.name} rolls #{moves}"
  player1.position += moves

  if player1.position < 15
    current_square = board.current_square_value(player1.position)
    puts "#{player1.name} lands on #{current_square}"
    if current_square > 0
      puts "Move ahead #{current_square}"
    elsif current_square < 0
      puts "Oh no, move back #{current_square}"
    end
    player1.position += current_square
    puts "#{player1.name} is now on #{player1.position}"
  end
end

puts "#{player1.name} wins!"

