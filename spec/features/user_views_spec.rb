

RSpec.describe "As a visitor" do
  it "they see a list of comedians with attributes" do
    comedian = Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")

    visit '/comedians'
    expect(page).to have_content(comedian.name)
    expect(page).to have_content(comedian.age)
    expect(page).to have_content(comedian.city)
  end

  it "they see a list of each comedian's TV specials" do
    comedian = Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

    special = comedian.specials.create(special_name: "Demetri Martin: The Overthinker", run_time: 54)

    visit '/comedians'
    expect(page).to have_content(special.special_name)
  end

  it "they see the length of each special's run-time in minutes" do
    comedian = Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

    special = comedian.specials.create(special_name: "Demetri Martin: The Overthinker", run_time: 54)

    visit '/comedians'
    expect(page).to have_content(special.run_time)
  end

  it "they see a thumbnail image" do
    comedian = Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

    special = comedian.specials.create(special_name: "Demetri Martin: The Overthinker", run_time: 54, thumbnail: "/images/specials/the-overthinker.jpg")

    visit '/comedians'
    expect(page).to have_css("img[src*='#{special.thumbnail}']")
    # expect(page).to have_css("img[src*='environ-peeling-kuur.jpg']")
  end

  it "they an area of the page called 'Statistics'" do

    visit '/comedians'
    expect(page).to have_content('Statistics')
  end
end
