RSpec.describe "As a visitor" do
  it "can see the average age of all comedians" do
    Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
    Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")
    Special.create(special_name: "All in Good Taste", run_time: 85)
    Special.create(special_name: "Demetri Martin: The Overthinker", run_time: 54)

    visit '/comedians'
    within "#stats" do
    expect(page).to have_content("The average age of all comedians on this site is #{Comedian.average_age}.")
    expect(page).to have_content("#{Special.average_run_time} minutes.")
    expect(page).to have_content("U.S. & Canada, including #{Comedian.unique_cities.join(', ')}.")

    end
  end
end
