class TimeTracking < ApplicationRecord
  before_create :set_time
  validates :latitude, presence: true
  validates :longitude, presence: true

  def set_time
    self.time = Time.now
  end
end