require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:input)
end

post('/output') do
  @weight = params.fetch("weight")
  @width = params.fetch("width")
  @length = params.fetch("length")
  @distance = params.fetch("distance")
  parcel = Parcels.new(@weight, @width, @length, @distance)
  @volume = parcel.volume
  @shipping_cost = parcel.shipping_cost
  erb(:output)
end