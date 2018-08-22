require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddles')

get('/') do
  erb(:homepage)
end

get('/riddle') do
  riddle = Riddles.new
  @riddle = riddle.get(0)
  @counter = 0
  erb(:riddle)
end

post('/riddle') do
  riddle = Riddles.new
  counter = params.fetch('counter').to_i
  answer = params.fetch('answer')
  if(riddle.correct?(counter,answer) && counter == 2)
    @string_to_display = "You got into the sphinx."
    erb(:result)
  elsif (riddle.correct?(counter,answer))
    @counter = counter+1
    @riddle = riddle.get(@counter)
    erb(:riddle)
  else
    @string_to_display = "You failed."
    erb(:result)
  end
end