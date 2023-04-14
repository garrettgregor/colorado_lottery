require "spec_helper"

RSpec.describe Contestant do
  before(:each) do 
    @alexander = Contestant.new({first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10})
  end

  describe "initialize" do
    it "exists and has attributes" do
      expect(@alexander.full_name).to eq("Alexander Aigiades")
      expect(@alexander.age).to eq(28)
      expect(@alexander.state_of_residence).to eq("CO")
      expect(@alexander.spending_money).to eq(10)
      expect(@alexander.game_interests).to eq([])
    end
  end
  
  describe "out_of_state?" do
    it "checks if a contestant is out of state" do
      expect(@alexander.out_of_state?).to be false
    end
  end
end
