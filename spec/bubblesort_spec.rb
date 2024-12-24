require_relative "../lib/bubblesort"

describe "#bubble_sort" do
	it "return a sorted array" do
		array = [4, 3, 78, 2, 0, 2]
		sorted = [0, 2, 2, 3, 4, 78]
		expect(bubble_sort(array)).to eql(sorted)
	end
end