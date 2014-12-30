require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it{expect(subject).to respond_to :name}
  it{expect(subject).to respond_to :grade}
  it{expect(subject).to respond_to :active}
  it{expect(subject).to validate_presence_of :name}
  it{expect(subject).to validate_uniqueness_of :name}
  it{expect(subject).to validate_presence_of :grade}
  it{expect(subject).to validate_inclusion_of(:grade).in_array((1..8).to_a)}

  context "2 teachers, 1 active, i inactive" do
    let!(:active_teacher){create :teacher, active: true}
    let!(:inactive_teacher){create :teacher, active: false}

    it {expect(active_teacher).to be_valid}
    it {expect(Teacher.active.to_a).to match_array [active_teacher]}
  end

end
