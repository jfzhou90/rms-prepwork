require('rspec')
require('coin_combinations')

describe 'Cents#coin_combinations' do
  it 'returns pennies = 1 on 1 cent' do
    money = Cents.new(1)
    expect(money.coin_combinations["pennies"]).to(eq(1))
  end

  it 'returns quarters = 2 on 50 cents' do
    money = Cents.new(50)
    expect(money.coin_combinations["quarters"]).to(eq(2))
  end

  it 'returns quarters = 2 and pennies = 1 on 51 cents' do
    money = Cents.new(51)
    expect(money.coin_combinations["quarters"]).to(eq(2))
    expect(money.coin_combinations["pennies"]).to(eq(1))
  end

  it 'returns quarters = 2, nickels = 1, and pennies = 1 on 56 cents' do
    money = Cents.new(56)
    expect(money.coin_combinations["quarters"]).to(eq(2))
    expect(money.coin_combinations["nickels"]).to(eq(1))
    expect(money.coin_combinations["pennies"]).to(eq(1))
  end

  it 'returns quarters = 1, dimes = 2 nickels = 0, and pennies = 1 on 46 cents' do
    money = Cents.new(46)
    expect(money.coin_combinations["quarters"]).to(eq(1))
    expect(money.coin_combinations["dimes"]).to(eq(2))
    expect(money.coin_combinations["nickels"]).to(eq(0))
    expect(money.coin_combinations["pennies"]).to(eq(1))
  end
end