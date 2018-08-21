require('rspec')
require('allergies')

describe("Score#allergy") do
  it("returns an array with ['eggs'] as its only allergy when score.allergy(1).") do
    score = Score.new
    expect(score.allergies(1)).to(eql(['eggs']))
  end

  it("returns an array with ['eggs', 'strawberries'] as its only allergy when score.allergy(9).") do
    score = Score.new
    expect(score.allergies(9)).to match_array(['eggs', 'strawberries'])
  end

  it("returns an array with ['eggs', 'strawberries'] as its only allergy when score.allergy(8).") do
    score = Score.new
    expect(score.allergies(8)).to match_array(['strawberries'])
  end
end
