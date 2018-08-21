require('leetspeak')
require('rspec')

describe('Leetspeak#convert') do
  before(:each) do
    @leetspeak = Leetspeak.new()
  end

  it('returns a string as is when no Leetspeak rules apply') do
    expect(@leetspeak.convert("happy")).to(eq("happy"))
  end

  it('replaces every "e" in a string with a "3"') do
    expect(@leetspeak.convert("elephant")).to(eq("3l3phant"))
  end

 it('replaces every "o" in a string with a "0"') do
    expect(@leetspeak.convert("boo boo")).to(eq("b00 b00"))
  end

 it('replaces every "I" in a string with a "1"') do
    expect(@leetspeak.convert("I like Ike")).to(eq("1 lik3 1k3"))
  end

 it('replaces every "s" in a string with a "z"') do
    expect(@leetspeak.convert("roses")).to(eq("r0z3z"))
  end

  it('does NOT replace the first letter when it is an s') do
    expect(@leetspeak.convert("sassafrass")).to(eq("sazzafrazz"))
  end

  it('replaces letters correctly in a string of words') do
    expect(@leetspeak.convert("I scream you scream we all scream for raspberry ice cream")).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am"))
  end
end