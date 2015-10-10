require 'rails_helper'

describe Poll do
  context "#relationships" do
    it { is_expected.to belong_to(:product) }
  end

  context "#state" do
    let(:poll) { FactoryGirl.build(:poll) }

    it "initial state is running" do
      expect(poll.running?).to eq(true)
    end

    it "can change from running to closed" do
      poll.close!
      expect(poll.closed?).to eq(true)
    end

    it "can change from closed to running" do
      poll.close!
      poll.run!
      expect(poll.running?).to eq(true)
    end
  end
end
