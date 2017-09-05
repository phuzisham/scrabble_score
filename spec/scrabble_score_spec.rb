require('pry')
require('rspec')
require('scrabble_score')

describe('#scrabble') do
  it("returns a scrabble score for a letter") do
    example = Scrab.new('A')
    expect(example.scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a word") do
    example = Scrab.new('APPLE')
    expect(example.scrabble()).to(eq(9))
  end

  it("returns a scrabble score for a word") do
    example = Scrab.new('QUIZ')
    expect(example.scrabble()).to(eq(22))
  end
end
