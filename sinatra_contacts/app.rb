require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do
  @contacts = Contacts.all
  erb(:home)
end

get('/:id') do
  @contact = Contacts.find_by_id(params.fetch('id').to_i)
  erb(:contact)
end

post('/') do
  contact = {
    "name" => params.fetch('name'),
    "phoneNumber" => params.fetch('phoneNumber'),
    "email" => params.fetch('email')
  }
  Contacts.new(contact)
  @contacts = Contacts.all
  erb(:home)
end
