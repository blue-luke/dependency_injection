class EmailClient
  def initialize(message = Message) 
    @message = message
  end
  def message
    @message.new
  end
end