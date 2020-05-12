class Transfer
  
  attr_accessor :status, :receiver, :amount
  attr_reader :sender

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

end
