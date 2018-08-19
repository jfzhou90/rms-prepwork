require('rspec')
require('numbers_to_words')

describe('Number#numbers_to_words') do
  it("returns error if larger than nine trillion") do
    expect(10000000000000.numbers_to_words).to(eq("Error"))
  end

  it("returns the number 0 in english zero") do
    expect(0.numbers_to_words).to(eq("zero"))
  end

  it("returns the number 1 in english one") do
    expect(1.numbers_to_words).to(eq("one"))
  end

  it("returns the number 11 in english eleven") do
    expect(11.numbers_to_words).to(eq("eleven"))
  end

  it("returns the number 15 in english fifteen") do
    expect(15.numbers_to_words).to(eq("fifteen"))
  end

  it("returns the number 222 in english two hundred twenty-two") do
    expect(222.numbers_to_words).to(eq("two hundred twenty-two"))
  end

  it("returns the number 222 in english one thousand two hundred twenty-two") do
    expect(1222.numbers_to_words).to(eq("one thousand two hundred twenty-two"))
  end

  it("returns the number 11222 in english eleven thousand two hundred twenty-two") do
    expect(11222.numbers_to_words).to(eq("eleven thousand two hundred twenty-two"))
  end

  it("returns the number 111222 in english one hundred eleven thousand two hundred twenty-two") do
    expect(111222.numbers_to_words).to(eq("one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns the number 3111222 in english three million one hundred eleven thousand two hundred twenty-two") do
    expect(3111222.numbers_to_words).to(eq("three million one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns the number 33111222 in english thirty-three million one hundred eleven thousand two hundred twenty-two") do
    expect(33111222.numbers_to_words).to(eq("thirty-three million one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns the number 333111222 in english three hundred thirty-three million one hundred eleven thousand two hundred twenty-two") do
    expect(333111222.numbers_to_words).to(eq("three hundred thirty-three million one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns the number 4333111222 in english four billion three hundred thirty-three million one hundred eleven thousand two hundred twenty-two") do
    expect(4333111222.numbers_to_words).to(eq("four billion three hundred thirty-three million one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns the number 44333111222 in english forty-four billion three hundred thirty-three million one hundred eleven thousand two hundred twenty-two") do
    expect(44333111222.numbers_to_words).to(eq("forty-four billion three hundred thirty-three million one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns the number 444333111222 in english four hundred forty-four billion three hundred thirty-three million one hundred eleven thousand two hundred twenty-two") do
    expect(444333111222.numbers_to_words).to(eq("four hundred forty-four billion three hundred thirty-three million one hundred eleven thousand two hundred twenty-two"))
  end

  it("returns error on 1 trillion") do
    expect(1000000000000.numbers_to_words).to(eq("Error"))
  end
end