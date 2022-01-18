require 'noteformatter'

describe NoteFormatter do
  it 'formats a note' do
  note_double = double :note, title: "Tomorrow", body: "Buy bananas"
    noteformatter = NoteFormatter.new
    expect(noteformatter.format(note_double)).to eq "Title: Tomorrow\nBuy bananas"
  end
end