require('rspec')
require('scrabble')

describe('Word#scrabble') do
  it("returns a scrabble score for a letter") do
    word = Word.new("a")
    expect(word.scrabble()).to(eq(1))
  end

  it('return 14 points for the word "Joey"') do
    word = Word.new("Joey")
    expect(word.scrabble()).to(eq(14))
  end

  it('return 12 points for the word "RoleModel"') do
    word = Word.new("RoleModel")
    expect(word.scrabble()).to(eq(12))
  end

  it('return 10 points for the word "cake"') do
    word = Word.new("cake")
    expect(word.scrabble()).to(eq(10))
  end
end
