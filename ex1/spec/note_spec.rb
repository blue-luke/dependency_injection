require 'note'

describe Note do
  describe "#format" do
  let(:formatter_double) { double NoteFormatter.new }
    it "returns a formatted note" do
      allow(formatter_double).to receive(:format).and_return("Title: Tomorrow\nBuy bananas")
      note = Note.new("Tomorrow", "Buy bananas", formatter_double)
      expect(note.display).to eq "Title: Tomorrow\nBuy bananas"
    end
  end
end