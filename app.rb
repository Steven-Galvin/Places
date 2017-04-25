require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require('./lib/places')

get("/") do
  @places = Place.all()
  erb(:index)
end

post("/display") do
  name = params.fetch("place")
  place = Place.new(name)
  place.save()
  erb(:display)
end
