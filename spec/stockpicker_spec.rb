require_relative '../lib/stockpicker'

describe "#stockpicker" do
  it "return the best day to buy and sell" do
    expect(stockpicker([17,3,6,9,15,8,6,1,10])).to eql([1,4])
  end
end