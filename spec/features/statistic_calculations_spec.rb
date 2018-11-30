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

  describe "As a visitor" do
    it "they see the statistics of the comedians matching the specified age" do
      comedian_1 = Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")
      comedian_1.specials.create(special_name: "Straight White Male, 60", run_time: 64, thumbnail: "/images/specials/straigh-white-male-60.jpg")
      comedian_2 = Comedian.create(name: "Jim Gaffigan", age: 52, city: "Elgin")
      comedian_2.specials.create(special_name: "Cinco", run_time: 73, thumbnail: "/images/specials/Cinco.jpg")
      comedian_2.specials.create(special_name: "Obsessed", run_time: 79, thumbnail: "/images/specials/Obsessed.jpg")
      comedian_2.specials.create(special_name: "Jim Gaffigan: Mr. Universe", run_time: 74, thumbnail: "/images/specials/MrUniverse.jpg")
      comedian_12 = Comedian.create(name: "Adam Sandler", age: 52, city: "Brooklyn")
      comedian_12.specials.create(special_name: "100% Fresh", run_time: 73, thumbnail: "/images/specials/100-fresh.jpg")


      visit '/comedians?age=52'
      expect(page).to have_content("The average age of all comedians on this site is 52.")
      expect(page).to have_content("74 minutes.")
      expect(page).to have_content("U.S. & Canada, including Elgin", "Brooklyn")
      expect(page).to have_content("this site is 4")
    end
  end
end
