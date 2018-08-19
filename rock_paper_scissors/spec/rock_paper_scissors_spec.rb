require('rspec')
require('rock_paper_scissors')

describe('RPS#wins?') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end

  it("returns true if scissors is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end

  it("returns true if paper is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end

  it("returns false if rock is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "rock")).to(eq(false))
  end

  it("returns true if scissors is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "rock")).to(eq(false))
  end
end
