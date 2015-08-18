class Account

  attr_reader :balance

  def initialize(name, balance, pin)
    @name = args[:name]
    @balance = args[:balance]
    @pin = args[:pin]
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

  def correct_pin?(pin)
    @pin == pin
  end
end

me = Account.new(pin: 1234, balance: 2000)

me.balance # 2000