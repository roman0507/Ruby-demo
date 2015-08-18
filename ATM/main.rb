require './atm'
require './account'
require './user'
require './actions'

registry = ActionRegistry.new([
           Balance.new,
           Deposit.new,
           Withdraw.new,
           Transfer.new,
           Quit.new
])
puts registry

puts "w ==> #{registry.find_action("w")}"
puts "deposit ==> #{registry.find_action("deposit")}"

exit

# Composition --> a user is composed of a name, pin, and an array of accounts.
user. User.new("Stephen", 1234, [
      Account.new("Checking", 200.00)
      Account.new("Savings",  500.00)
])

AutomaticTellerMachine.new(user).request_loop