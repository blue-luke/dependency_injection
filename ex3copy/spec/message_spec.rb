require 'message'

describe Message do
  it 'sends an email' do
    subject.send_email("John", "Party invite")
    # no test content as no method content
  end
end