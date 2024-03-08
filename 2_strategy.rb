# Define a set of algorithms (strategies)
class ConcreteStrategyA
  def execute
    puts "Executing strategy A"
  end
end

class ConcreteStrategyB
  def execute
    puts "Executing strategy B"
  end
end

# Context class that uses a strategy
class Context
  attr_accessor :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy
    @strategy.execute
  end
end

# Client code
strategy_a = ConcreteStrategyA.new
context_a = Context.new(strategy_a)
context_a.execute_strategy

strategy_b = ConcreteStrategyB.new
context_b = Context.new(strategy_b)
context_b.execute_strategy
