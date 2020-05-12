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
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid?
      @sender.balance = @sender.balance - amount
      @receiver.balance = @receiver.balance + amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
      
  end
  end

end
