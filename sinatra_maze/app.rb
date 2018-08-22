require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/maze')

maze = Maze.new

get('/') do
  maze.current_room = 1
  erb(:home)
end

get('/room') do
  if params["direction"]
    direction = params.fetch('direction')
    maze.move(direction)
  end
  @current_room = maze.current_room
  if @current_room == 9
    @string_to_display = "You Win!"
    erb(:win)
  else
    @available_moves = maze.available_move(@current_room)
    erb(:room)
  end
end

