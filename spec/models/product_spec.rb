require "rails_helper"

describe Product do
  describe "#Vaidations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:msrp) }
  end

  describe "#Relationships" do
    it { is_expected.to have_many(:drops) }
    it { is_expected.to have_many(:polls) }
  end
end
