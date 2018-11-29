RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe "Class Methods" do
    it ".average_age" do
      Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
      Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

      expect(Comedian.average_age).to eq(50)
    end

    it ".average_run_time" do
      Special.create(special_name: "All in Good Taste", run_time: 85)
      Special.create(special_name: "Demetri Martin: The Overthinker", run_time: 54)

      expect(Special.average_run_time).to eq(69)
    end

    it ".unique_cities" do
      Comedian.create(name: "Jim Carrey", age: 56, city: "Newmarket")
      Comedian.create(name: "Demetri Martin", age: 45, city: "New York City")

      expect(Comedian.unique_cities).to eq(["Newmarket", "New York City"])
    end
  end
end
