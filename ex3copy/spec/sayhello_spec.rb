require 'sayhello' 

describe 'SayHello' do
  it 'sends an email' do
    email_client_double = double("EmailClient")
    allow(email_client_double).to receive_message_chain(:new, :message, :send_email) { "Email sent" }
    sh = SayHello.new(email_client_double)
    expect(sh.run).to eq "Email sent"
  end
end