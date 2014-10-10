require_relative './lib/game'

puts "You're playing Yatzy!"
puts "Enter a list of player names (separated by commas):"
game = Game.new(gets)
game.play
