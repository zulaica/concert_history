require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end

post("/bands") do
  band_name= params.fetch("band_name")
  Band.create({:band_name=> band_name})
  redirect("/")
end

get("/bands/:id") do
  @band_id = params.fetch("id").to_i()
  band = Band.find(@band_id)
  erb(:band)
end

patch("/bands/:id") do
  @band_id = params.fetch("id").to_i()
  band = Band.find(@band_id)
  band.update({:band_name => params.fetch("band_name")})
  url = "/bands/" + @band_id.to_s()
  redirect(url)
end

delete("/bands/:id") do
  @band_id = params.fetch("id").to_i()
  band = Band.find(@band_id)
  band.delete()
  band.venues.delete()
  redirect("/")
end

post("/venues") do
  venue_name= params.fetch("venue_name")
  Venue.create({:venue_name=> venue_name})
  redirect("/")
end

post("/performances") do
  @band_id = params.fetch("band_id").to_i()
  @band = Band.find(@band_id)
  @venue_ids = params.fetch("venue_ids")
  @venue_ids.each do |venue|
    the_venue = Venue.find(venue.to_i())
    @band.venues.push([the_venue])
  end
  url = "/bands/" + @band_id.to_s()
  redirect(url)
end
