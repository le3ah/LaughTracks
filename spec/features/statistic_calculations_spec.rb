RSpec.describe "As a visitor" do
  it "can see the average age of all comedians" do
    Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
    Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

    visit '/comedians'
    expect(page).to have_content(Comedian.average_age)
    expect(Comedian.average_age).to eq(50)
  end
end
