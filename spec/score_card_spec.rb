require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/score_card'

describe ScoreCard do
  it "starts with a total score of 0" do
    score_card = ScoreCard.new
    score_card.total_score.must_equal 0
  end

  it "has 6 score boxes" do
    score_card = ScoreCard.new
    score_card.score_boxes.count.must_equal 6
  end

  it "starts without any of its boxes scored" do
    score_card = ScoreCard.new
    score_card.scored_boxes.count.must_equal 0
  end
end
