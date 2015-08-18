class User

  attr_reader :accounts

  def initialize(name, pin, accounts)
    @name     = name
    @pin      = pin
    @accounts = accounts
  end

  def correct_pin?(pin)
    @pin == pin
  end
end