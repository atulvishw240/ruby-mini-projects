require_relative '../lib/substrings'

describe "#substrings" do
  it "return a hash listing each substring that was found in the original string" do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    output = { "below" => 1, "low" => 1 }
    expect(substrings("below", dictionary)).to eql(output)
  end

  it "can handle mutltiple words" do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    output = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eql(output)
  end
end
