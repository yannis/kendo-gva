require 'rails_helper'

RSpec.describe Startdate, type: :model do
  it{expect(subject).to respond_to :start_on}
  it{expect(subject).to validate_presence_of :start_on}
  it{expect(subject).to validate_uniqueness_of :start_on}

  context "2 Startdate, 1 past and 1 future" do
    let!(:past_startdate){create :startdate, start_on: 1.month.ago}
    let!(:future_startdate){create :startdate, start_on: 1.month.since}

    it {expect(Startdate.future.to_a).to match_array [future_startdate]}
  end

end
