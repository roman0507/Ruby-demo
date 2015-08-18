class AutomaticTellerMachine

  def initialize(args) # Better more flexible
    @account = args[:account]
    @name = args[:name]
    @answer = nil
    @quit = false
  end

  def check_pin  # not relevant to a specific atm, relevant to all atm's
    counter = 0
    pin = nil

    until pin == @account.correct_pin? do
      puts "Please enter your pin"
      pin = gets.chomp.to_i

      if pin == @account.correct_pin?
        return
      else
        counter += 1
      end

      if counter == 3
        sleep(3.0)
        counter = 0
      end
    end
  end

   def process_requests
    until @quit do 
      get_request
      process_request
    end
  end

  private
    def get_request
      until valid_answer? do
        puts "Pick an option: Deposit, Balance, Withdraw, Quit"
        @answer = gets.chomp.downcase
        puts "Not a recognized command.  Please pick an option: Deposit, Balance, Withdraw, Quit" unless valid_answer?
      end
    end



    def valid_answer?
      ["deposit", "balance", "withdraw", "quit"].include?(@answer)
    end



    def process_request
      case @answer

      when "deposit"
        deposit

      when "balance"
        print_balance

      when "withdraw"
        withdraw

      when "quit"
        puts "Goodbye!"
        @quit = true
      end
    end

    def deposit
      puts "How much do you want to deposit?"
      deposit = gets.chomp.to_f
      @balance += deposit
      print_balance
    end



    def withdraw
      puts "How much do you want to withdraw?"
      withdraw = gets.chomp.to_f

      if @balance >= withdraw
        @balance  -= withdraw
      else
        puts "You don't have enough money to make that withdrawl son!"
      end
      print_balance
    end

    def print_balance
      balance_as_string = '%.2f' % @account.balance # '%.2f' adds decimal point
      puts "Your current balance is $#{balance_as_string}"
    end
end