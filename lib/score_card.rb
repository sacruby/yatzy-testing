require_relative './score_box'

class ScoreCard
  attr_reader :score_boxes

  def initialize
    @score_boxes = %w{ aces twos threes fours fives sixes }.map.with_index do |name, index|
      die_to_count = index + 1
      ScoreBox.new(name, die_to_count)
    end
  end

  def scored_boxes
    @score_boxes.select(&:scored?)
  end

  def unscored_boxes
    @score_boxes.reject(&:scored?)
  end

  def choose_best_score_box(dice)
    unscored_boxes.max_by {|box| box.count_dice(dice)}
  end

  def total_score
    scored_boxes.map(&:score).reduce(0) {|total, score| total -= score}
  end

  def to_s
    @score_boxes.join("\n")
  end
end
