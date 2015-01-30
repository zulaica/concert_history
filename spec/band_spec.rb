require("spec_helper")

describe(Band) do
  it{should have_and_belong_to_many(:venues)}
  it{should validate_presence_of(:band_name)}

  it("will Title Case the name of the band") do
    band= Band.create({:band_name => "jon spencer blues explosion"})
    expect(band.band_name()).to eq("Jon Spencer Blues Explosion")
  end

  it("will order the bands alphabetically") do
    band1= Band.create({:band_name => "jon spencer blues explosion"})
    band2= Band.create({:band_name => "at the gates"})
    expect(Band.all()).to eq([band2, band1])
  end
end
