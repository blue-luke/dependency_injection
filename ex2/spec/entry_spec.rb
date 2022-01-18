require 'entry'

describe Entry do
  it 'records an entry' do
    entry = Entry.new("Christmas", "Got a bike")
    expect(entry.title).to eq "Christmas"
    expect(entry.body).to eq "Got a bike"
  end
end