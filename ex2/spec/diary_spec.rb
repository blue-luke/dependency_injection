require 'Diary'

describe Diary do
  it 'lists an entry' do
    entry_double = double("entry", :title => "Christmas", :body => "Got bike")
    entry_class_double = double("Entry", :new => entry_double)

    diary = Diary.new(entry_class_double)
    diary.add("Christmas", "Got bike")

    expect(diary.index).to eq "Christmas"
  end
  it 'lists two entries' do
    entry_double = double("entry", :title => "Christmas", :body => "Got bike")
    entry_class_double = double("Entry", :new => entry_double)

    diary = Diary.new(entry_class_double)
    diary.add("Christmas", "Got bike")
    diary.add("Christmas", "Got bike")

    # same entry added twice. If entries are different, an issue arises because the entry_class_double is hard-coded with a specific entry_double

    expect(diary.index).to eq "Christmas\nChristmas"
  end
end

# cosmetic change