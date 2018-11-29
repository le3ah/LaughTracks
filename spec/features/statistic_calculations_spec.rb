RSpec.describe "As a visitor" do
  it "can see the average age of all comedians" do
    Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
    Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

    visit '/comedians'
    expect(page).to have_content(Comedian.average_age)
    expect(Comedian.average_age).to eq(50)
  end

  it "can see the average age of all special run times" do
    # Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
    Special.create(special_name: "All in Good Taste", run_time: 85)
    # Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")
    Special.create(special_name: "Demetri Martin: The Overthinker", run_time: 54)

    visit '/comedians'
    expect(page).to have_content(Special.average_run_time)
    expect(Special.average_run_time).to eq(69)
  end
end
