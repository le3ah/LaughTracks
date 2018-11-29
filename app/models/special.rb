class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :special_name, presence: true
end
