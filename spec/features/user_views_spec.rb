

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

  it "they see an area of the page called 'Statistics'" do

    visit '/comedians'
    within "#stats" do
      expect(page).to have_content('Statistics')
    end
  end

  it "they see a form to input a new comedian into the database" do

    visit '/comedians/new'
    comedian_name = 'Frank'
    comedian_age = 41
    comedian_hometown = 'Cullman'
    fill_in 'comedian[name]', with: comedian_name
    fill_in 'comedian[age]', with: comedian_age
    fill_in 'comedian[city]', with: comedian_hometown

    click_button 'Submit'

    expect(current_path).to eq('/comedians')

    expect(page).to have_content(comedian_name)
    expect(page).to have_content(comedian_age)
    expect(page).to have_content(comedian_hometown)
  end

  it "they see an error message that is different from Sinatra's error" do

    visit '/comedians/'

    expect(page).to have_content('Sorry for the convenience.')
  end
end
