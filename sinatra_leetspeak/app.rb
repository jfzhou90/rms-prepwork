require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/leetspeak')

get('/') do
  erb(:input)
end

get('/output') do
  @original = params.fetch("original")
  leetspeak = Leetspeak.new()
  @string_to_display = leetspeak.convert(@original)
  erb(:output)
end