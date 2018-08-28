require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_things')

get('/') do
  @items = Item.all()
  erb(:all_fav)
end

post('/') do
  Item.new(params.fetch('item'), params.fetch('rank')).save
  Item.sort
  @items = Item.all()
  erb(:all_fav)
end