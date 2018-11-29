class Comedian < ActiveRecord::Base
  has_many :specials, dependent: :destroy #removes associated specials, when destroying all comedians
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age).to_i
  end
end
