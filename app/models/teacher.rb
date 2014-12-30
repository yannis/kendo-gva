class Teacher < ActiveRecord::Base

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :grade
  validates_inclusion_of :grade, in: (1..8).to_a

  def self.active
    where active: true
  end
end
