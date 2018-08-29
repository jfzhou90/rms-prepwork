require('rspec')
require('hangman')

describe('Game') do
  it('#initialize')do
    game = Game.new()
    expect(Game.words.include?(game.word)).to(eq(true))
  end

  it('#guess returns t__t after typing t for test')do
    game = Game.new("test")
    expect(game.word).to(eq("test"))
    expect(game.current_word_status).to(eq("____"))
    game.guess("t")
    expect(game.current_word_status).to(eq("t__t"))
  end

  it('#guess returns te_t after typing t,e for test')do
    game = Game.new("test")
    game.guess("t")
    game.guess("e")
    expect(game.current_word_status).to(eq("te_t"))
  end

  it('#win if word is completed, and false if not completed')do
    game = Game.new("test")
    game.guess("t")
    game.guess("e")
    expect(game.win?).to(eq(false))
    game.guess("s")
    expect(game.win?).to(eq(true))
  end

  it('#dead returns true if ran out of tries')do
    game = Game.new("test")
    expect(game.dead?).to(eq(false))
    game.tries = 0
    expect(game.dead?).to(eq(true))
  end
end
