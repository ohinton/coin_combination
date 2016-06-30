require('sinatra')
require('sinatra/reloader')
require('./lib/combo')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/output') do
  @output = params.fetch('user_input').combo()
  erb(:output)
end
