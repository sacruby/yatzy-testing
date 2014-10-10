require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'

describe Game do
  it "can't be created without any players" do
    proc { Game.new() }.must_raise ArgumentError
  end

  it "can't be created with less than two players" do
    error = proc { Game.new('Test Player') }.must_raise ArgumentError
    error.message.must_equal "Game requires at least 2 players"
  end

  it "requires player names to be unique" do
    error = proc { Game.new('Test Player, Test Player') }.must_raise ArgumentError
    error.message.must_equal "Player names must be unique"
  end

  it "permits 3 players to play" do
    game = Game.new('Player 1, Player 2, Player 3')
    game.players.count.must_equal 3
  end
end
