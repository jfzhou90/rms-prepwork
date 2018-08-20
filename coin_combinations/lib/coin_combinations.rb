class Cents
  def initialize(amount)
    @amount = amount
  end

  def coin_combinations
    quarters = @amount/25
    dimes = (@amount - quarters*25) / 10
    nickels = (@amount - quarters*25 - dimes*10) / 5
    pennies = @amount - quarters*25 - dimes*10 - nickels*5
    coins = {
      "quarters" => quarters,
      "dimes" => dimes,
      "nickels" => nickels,
      "pennies" => pennies
    }
  end
end
