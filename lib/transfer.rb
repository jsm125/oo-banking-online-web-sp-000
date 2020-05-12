class Transfer
  
  attr_accessor :status, :receiver, :amount
  attr_reader :sender

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid? && @sender.balance > @amount && @status == "pending"
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

end
