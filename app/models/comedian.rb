class Comedian < ActiveRecord::Base
  has_many :specials, dependent: :destroy #removes associated specials, when destroying all comedians
  validates :name, presence: true
  validates :age, presence: true
end
