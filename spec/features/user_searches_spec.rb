RSpec.describe "As a visitor" do
  it "they see a list of the comedians matching the specified age" do
    comedian_1 = Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")
    comedian_2 = Comedian.create(name: "Trevor Noah", age: 34, city: "Johannesburg")
    comedian_3 = Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")

    visit '/comedians?age=34'

    expect(page).to have_content('Statistics')
    expect(page).to have_content(comedian_2.name)
    expect(page).to have_no_content(comedian_1.name)
    expect(page).to have_no_content(comedian_3.name)
  end
end
