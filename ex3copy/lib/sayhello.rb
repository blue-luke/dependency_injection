class SayHello
  def initialize(emailclient = EmailClient)
    @emailclient = emailclient
  end
  def run
    email = @emailclient.new
    email.message.send_email(
      "friend@example.com",
      "HELLO!"
    )
  end
end