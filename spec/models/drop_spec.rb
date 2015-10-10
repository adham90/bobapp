require "rails_helper"

describe Drop do
  let(:drop) { FactoryGirl.build(:drop) }

  context "#relationships" do
    it { is_expected.to belong_to(:product) }
  end

  context "#state" do
    it "initial state should be running" do
      expect(drop.running?).to eq(true)
    end

    it "can change from running to ended" do
      drop.end!
      expect(drop.ended?).to eq(true)
    end

    it "can change from ended to done" do
      drop.end!
      drop.done!
      expect(drop.done?).to eq(true)
    end

    it "can not change from running to done" do
      expect{drop.done!}.to raise_error(AASM::InvalidTransition)
    end
  end

end
