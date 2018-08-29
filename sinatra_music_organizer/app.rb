require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/artists')
require('./lib/album')

michael = Artists.new("Michael Buble", "Unknown Genre")
michael.add_album(Album.new("to be loved","https://lh3.googleusercontent.com/As9_o26yya6-46U0Fsep9vC9XU8v4vVYvdaT-Q2hVzOeAqTA4svuI0YUzSwcA_FmplghHaS4=w300"))

get('/') do
  @artists = Artists.all
  erb(:artists)
end

get('/artists/:id') do
  @artist = Artists.find_by_id(params['id'].to_i)
  erb(:artist)
end
