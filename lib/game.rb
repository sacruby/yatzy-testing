require_relative './player'

class Game
  attr_reader :players

  def initialize(player_names)
    player_names = player_names.split(',').map(&:strip)
    raise ArgumentError, "Game requires at least 2 players" unless player_names.length >= 2
    raise ArgumentError, "Player names must be unique" unless player_names.uniq.length == player_names.length
    @players = player_names.map do |name|
      Player.new(name)
    end
  end

  def play
    @players.cycle(6) do |player|
      puts "#{player.name}, it's your turn to roll."
      player.roll_dice
      player.record_score
      puts player.score_card.to_s
    end
    winner = determine_winner
    puts "#{winner.name} has won with a score of #{winner.score}!"
  end

  def determine_winner
    @players.max_by(&:score)
  end
end
