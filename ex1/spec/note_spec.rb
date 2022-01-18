require 'note'

describe Note do
  describe "#format" do
    it "returns a formatted note" do
      note = Note.new("Tomorrow", "Buy bananas")
      expect(note.display).to eq "Title: Tomorrow\nBuy bananas"
    end
  end
end