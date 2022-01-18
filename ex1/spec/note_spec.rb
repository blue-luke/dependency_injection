require 'note'

describe Note do
  describe "#format" do
    it "returns a formatted note" do
      formatter_double = double :noteformatter, format: "Title: Tomorrow\nBuy bananas"
      note = Note.new("Tomorrow", "Buy bananas", formatter_double)
      expect(note.display).to eq "Title: Tomorrow\nBuy bananas"
    end
  end
end