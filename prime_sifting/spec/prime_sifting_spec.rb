require('rspec')
require('prime_sifting')

describe("Number#prime_sifting") do
  it("returns an array with [2] as its only prime when 2.prime_sifting.") do
    expect(2.prime_sifting).to(eql([2]))
  end

  it("returns an array with [2,3] when 3.prime_sifting.") do
    expect(3.prime_sifting).to(eql([2,3]))
  end

  it("returns an array with [2,3,5,7,11] when 11.prime_sifting.") do
    expect(11.prime_sifting).to(eql([2,3,5,7,11]))
  end

  it("returns an array with [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] when 100.prime_sifting.") do
    expect(100.prime_sifting).to(eql([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]))
  end
end
