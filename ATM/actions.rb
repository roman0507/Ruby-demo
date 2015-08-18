class Action

  def initialize(name, abbrev)
    @name = name
    @abbrev = abbrev
  end

  def match?(action_as_string)
    @name == action_as_string || @abbrev == action_as_string
  end

  def to_s
    "#{@name} (#{@abbrev})"
  end
end

class Balance < Action

  def initialize
    super("balance", "b")
  end
end

class Deposit < Action

  def initialize
    super("deposit", "d")
  end
end

class Withdraw < Action

  def initialize
    super("withdraw", "w")
  end
end

class Transfer < Action

  def initialize
    super("transfer", "t")
  end
end

class Quit < Action

  def initialize
    super("quit", "q")
  end
end

class ActionRegistry < Action

  def initialize(actions)
    @actions = actions
  end

  def valid_action?(action_as_string)
    @actions.find do |action| 
      action.name == action_as_string || action.abbrev == action_as_string 
    end
  end

  def to_s
    "Available Actions: #{@actions.join(', ')}"
  end
end
