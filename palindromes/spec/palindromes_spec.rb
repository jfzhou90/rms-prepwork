require('rspec')
require('palindromes')

describe("String#is_palindromes?") do
  it("returns true if word 'mom' is a palindrome") do
    expect("mom".is_palindromes?).to(eql(true))
  end

  it("returns false if word 'mother' is not a palindrome") do
    expect("mother".is_palindromes?).to(eql(false))
  end

  it("returns true if word 'level' is a palindrome") do
    expect("level".is_palindromes?).to(eql(true))
  end

  it("returns true if word 'rotor' is a palindrome") do
    expect("rotor".is_palindromes?).to(eql(true))
  end

  it("returns true if word 'kayak' is a palindrome") do
    expect("kayak".is_palindromes?).to(eql(true))
  end

  it("returns false if letter 'a' is a palindrome") do
    expect("a".is_palindromes?).to(eql(false))
  end
end
