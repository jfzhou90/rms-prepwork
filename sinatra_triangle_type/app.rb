require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')

get('/') do
  erb(:input)
end

get('/output') do
  @length_a = params.fetch("length_a")
  @length_b = params.fetch("length_b")
  @length_c = params.fetch("length_c")
  triangle = Triangle.new(@length_a, @length_b, @length_c)
  @string_to_display = triangle.type
  erb(:output)
end