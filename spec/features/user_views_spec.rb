

RSpec.describe "As a visitor" do
  it "they see a list of comedians with attributes" do
    comedian = Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
    special = comedian.specials.create(special_name: "Demetri Martin: The Overthinker", run_time: 54)

    visit '/comedians'
    within "#comic-#{comedian.id}" do
      expect(page).to have_content(comedian.name)
      expect(page).to have_content(comedian.age)
      expect(page).to have_content(comedian.city)
      expect(page).to have_content(special.special_name)
      expect(page).to have_content(special.run_time)
      expect(page).to have_css("img[src*='#{special.thumbnail}']")
      expect(page).to have_content(Special.all.size)
    end
  end

  it "they an area of the page called 'Statistics'" do

    visit '/comedians'
    within "#stats" do
      expect(page).to have_content('Statistics')
    end
  end
end
