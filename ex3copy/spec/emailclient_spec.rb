require 'emailclient'

describe 'EmailClient' do
  it 'creates a new message' do
    message_double = double("Message", :new => "Received new")
    ec = EmailClient.new(message_double)
    expect(ec.message).to eq "Received new"
  end
end