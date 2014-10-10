require_relative './score_card'

class Player
  attr_reader(
    :name,
    :dice,
    :score_card
  )

  def initialize(name)
    @name = name
    @score_card = ScoreCard.new
  end

  def roll_die
    rand(1..6)
  end

  def roll_dice
    @dice = (1..5).map {roll_die}
  end

  def say_roll
    puts "Your roll is #{@dice.join(', ')}"
  end

  def record_score
    best_score_box = @score_card.choose_best_score_box(@dice)
    best_score_box.record_score(@dice)
  end

  def score
    @score_card.total_score
  end

  def say_score
    puts "Your score is #{score}."
  end
end
