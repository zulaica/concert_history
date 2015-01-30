require("spec_helper")

describe(Venue) do
  it{should have_and_belong_to_many(:bands)}
  it{should validate_presence_of(:venue_name)}

  it("will Title Case the name of the venue") do
    venue= Venue.create({:venue_name => "bottom of the hill"})
    expect(venue.venue_name()).to eq("Bottom Of The Hill")
  end

  it("will order the venues alphabetically") do
    venue1= Venue.create({:venue_name => "roseland theater"})
    venue2= Venue.create({:venue_name => "bottom of the hill"})
    expect(Venue.all()).to eq([venue2, venue1])
  end
end
