require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/player'

describe Player do
  it "can't be created without a name" do
    proc { Player.new() }.must_raise ArgumentError
  end

  it "remembers the name its given" do
    skip
  end

  it "has a score card" do
    skip
  end

  it "rolls 5 dice on her turn" do
    skip
  end

  it "rolls a 6-sided die" do
    player = Player.new('Test Player')
    [1,2,3,4,5,6].must_include player.roll_die
  end
end
