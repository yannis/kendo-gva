class Startdate < ActiveRecord::Base
  validates_presence_of :start_on
  validates_uniqueness_of :start_on


  def self.future
    where "startdates.start_on >= ?", Date.current
  end
end
