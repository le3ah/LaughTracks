

RSpec.describe "As a visitor" do
  it "they see a list of comedians with attributes" do
    comedian = Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")

    visit '/comedians'
    save_and_open_page
    expect(page).to have_content(comedian.name)
    expect(page).to have_content(comedian.age)
    expect(page).to have_content(comedian.city)
  end

  it "they see a list of each comedian's TV specials" do
    comedian = Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")

    special = comedian.specials.create(name: "An Evening at the Improv", run_time: 54)

    visit '/comedians'
    save_and_open_page
    expect(page).to have_content(special.name)
  end
end
