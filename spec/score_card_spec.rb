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
    skip
  end

  it "starts without any of its boxes scored" do
    skip
  end
end
