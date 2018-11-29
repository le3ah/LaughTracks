

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
    save_and_open_page
    expect(page).to have_content(special.name)
  end
end
