require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  erb(:start)
end

post('/pet') do
  if params['id'] == nil
    @pet = Tamagotchi.new(params.fetch('name'))
  else
    @pet = Tamagotchi.find_by_id(params.fetch('id').to_i)
  end

  if params['action'] != nil
    case params.fetch('action')
    when "feed"
      @pet.feed
    when "sleep"
      @pet.sleep
    when "play"
      @pet.play
    end
  end

  if !@pet.is_alive
    return erb(:dead)
  end

  erb(:pet)
end
