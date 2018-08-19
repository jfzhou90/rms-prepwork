require('rspec')
require('find_and_replace')

describe("String#find_and_replace") do
  it("replaces 'Hi' to Hello") do
    expect("Hi".find_and_replace("Hi", "Hello")).to(eql("Hello"))
  end

  it("replaces 'Hello world' to 'Hello universe'") do
    expect("Hello world".find_and_replace("world", "universe")).to(eql("Hello universe"))
  end

  it("replaces 'Find and replace' to 'Find and substitute'") do
    expect("Find and replace".find_and_replace("replace", "substitute")).to(eql("Find and substitute"))
  end
end