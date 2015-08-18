correct_pin = 1234
balance = 1500

def pin_check1(correct_pin)
  puts "What is your pin?"
  user_pin = gets.chomp.to_i
  if user_pin == correct_pin
    puts "Welcome to the Bank of Stephen!"
  else 
    pin_check2(correct_pin)
  end
end


def pin_check2(correct_pin)
  puts "Incorrect. Please enter your pin."
  user_pin = gets.chomp.to_i
  if user_pin == correct_pin
    puts "Welcome to the Bank of Stephen!"
  else 
    pin_check3(correct_pin)
  end
end

def pin_check3(correct_pin)
  puts "Incorrect. Please enter your pin."
  user_pin = gets.chomp.to_i
  if user_pin == correct_pin
    puts "Welcome to the Bank of Stephen!"
  else 
    puts "Incorrect. Please wait..."
    sleep(3.0)
    pin_check1(correct_pin)
  end
end

def welcome_menu(balance)
  puts "Choose an option: (Q) for quit, (B) for balance, (D) for deposit, (W) for withdraw"
  menu_choice = gets.chomp.upcase
  case menu_choice
    when "Q"
      quit
    when "B"
      balance(balance)
    when "D"
      deposit(balance)
    when "W"
      withdraw(balance)
    else 
      puts "Invalid selection."
      welcome_menu
  end
end

def quit
  puts "You chose quit.  Goodbye!"
end

def balance(balance)
  puts "Your balance is $#{balance}."
end

def deposit(balance)
  puts "Enter your deposit amount in whole dollars."
  deposit_amt = gets.chomp.to_i
  new_balance = balance + deposit_amt
  puts "Your updated balance is $#{new_balance}"
end

def withdraw(balance)
  puts "Enter your withdrawal amount in whole dollars."
  withdraw_amt = gets.chomp.to_i
  new_balance = balance - withdraw_amt
  if new_balance >= 0
    puts "Withdrawal complete.  Your updated balance is $#{new_balance}."
  else
    puts "Insufficient funds. Your withdrawal has been denied."
  end
end

pin_check1(correct_pin)
welcome_menu(balance)