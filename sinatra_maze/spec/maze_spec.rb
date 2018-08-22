require('rspec')
require('maze')

describe("Maze") do
  before(:each) do
    @maze = Maze.new
  end

  describe("#current_room") do 
    it("returns the current_room, starting at 1") do
      expect(@maze.current_room()).to(eq(1))
    end
  end

  describe("#available_move") do 
    it("returns the available moves for room 1") do
      expect(@maze.available_move(1)).to(eq(["UP","RIGHT"]))
    end
  end

  describe("#move") do 
    it("move to room 2 from 1 when RIGHT is entered") do
      @maze.move("RIGHT")
      expect(@maze.current_room()).to(eq(2))
    end

    it("remains room 1 when DOWN is entered") do
      @maze.move("DOWN")
      expect(@maze.current_room()).to(eq(1))
    end

    it("move to room 8 from 5 when up is entered") do
      @maze.current_room = 5
      @maze.move("UP")
      expect(@maze.current_room()).to(eq(8))
    end
  end
end