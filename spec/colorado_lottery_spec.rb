require "spec_helper"

RSpec.describe ColoradoLottery do
  before(:each) do 
    @lottery = ColoradoLottery.new
  end

  describe "initialize" do
    it "exists and has attributes" do
      expect(@lottery).to be_a(ColoradoLottery)
      expect(@lottery.registered_contestants).to eq({})
      expect(@lottery.winners).to eq([])
      expect(@lottery.current_contestants).to eq({})
    end
  end
end

