require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/combo')
require('pry')

get('/') do
  erb(:index)
end

get('/output') do
  # @title = params.fetch('title').title_case()
  erb(:output)
end
