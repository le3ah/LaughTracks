class Special < ActiveRecord::Base
  belongs_to :comedian
  validates :special_name, presence: true

  def self.average_run_time
    average(:run_time).to_i
  end
end
