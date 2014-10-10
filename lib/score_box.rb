class ScoreBox
  attr_reader(
    :name,
    :score
  )

  def initialize(name, die_to_count)
    @name = name
    @dice = ['-','-','-','-','-','--']
    @score = -1
    @die_to_count = die_to_count
  end

  def count_dice(dice)
    dice.count(@die_to_count)
  end

  def calculate_score(dice)
    count_dice(dice) * @die_to_count
  end

  def record_score(dice)
    @dice = dice
    @score = calculate_score(dice)
  end

  def scored?
    return true if @score >= 0
  end

  def to_s
    "#{@name}\t#{@dice.join(',')}\t#{@score}"
  end
end
