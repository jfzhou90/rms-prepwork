require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/hangman')

get('/') do
  @game = Game.new
  erb(:game)
end

post('/') do
  game = Game.find_by_id(params.fetch('id'))
  game.guess(params.fetch('guess'))
  if game.dead?
    @string = "You're dead"
    @word = game.word
    return erb(:result)
  end
  if game.win?
    @string = "You survived"
    return erb(:result)
  end
  @game = game
  erb(:game)
end
