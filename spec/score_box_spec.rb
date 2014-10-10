require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/score_box'

describe ScoreBox do
  it "displays an empty score box" do
    score_box = ScoreBox.new('twos',2)
    score_box.to_s.must_equal "twos\t-,-,-,-,-,-\t0"
  end

  it "starts as unscored" do
    skip # it becomes scored once it has recorded a set of dice
    score_box = ScoreBox.new('twos',2)
    score_box.scored?.must_equal false
  end

  it "counts the dice its supposed to count" do
    score_box = ScoreBox.new('twos',2)
    score_box.count_dice([2,2,2,4,6]).must_equal 3
  end
end
