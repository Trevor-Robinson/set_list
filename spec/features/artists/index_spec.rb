require 'rails_helper'
describe "artist index page" do
  it "can see all artists" do
    artist_1 = Artist.create(name: "Artist1")
    artist_2 = Artist.create(name: "Artist2")

    visit "/artists"

    expect(page).to have_content(artist_1.name)
    expect(page).to have_content(artist_2.name)
  end
end
