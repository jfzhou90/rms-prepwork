require('./lib/rooms')

class Maze
  attr_accessor :current_room

  def initialize
    @current_room = 1
  end

  def move(direction)
    if ROOMS[@current_room].include?(direction)
      @current_room = ROOMS[@current_room][direction]
    else
      @current_room
    end
  end

  def available_move(room)
    ROOMS[room].keys
  end
end

