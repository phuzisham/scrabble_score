class Scrab
  def initialize(str)
    @word = str
  end

  def scrabble()
    letters = Hash.new()
    letters.store('A', 1)
    letters.store('E', 1)
    letters.store('I', 1)
    letters.store('O', 1)
    letters.store('U', 1)
    letters.store('L', 1)
    letters.store('N', 1)
    letters.store('R', 1)
    letters.store('S', 1)
    letters.store('T', 1)
    letters.store('D', 2)
    letters.store('G', 2)
    letters.store('B', 3)
    letters.store('C', 3)
    letters.store('M', 3)
    letters.store('P', 3)
    letters.store('F', 4)
    letters.store('H', 4)
    letters.store('V', 4)
    letters.store('W', 4)
    letters.store('Y', 4)
    letters.store('K', 5)
    letters.store('J', 8)
    letters.store('X', 8)
    letters.store('Q', 10)
    letters.store('Z', 10)

    score = 0
    words = Array.new(@word.split(' '))
    x = 0
    y = 0
    while (x < words.length)
      while (y < words[x].length)
        score += letters.fetch(words[x][y])
        y += 1
      end
      x += 1
    end
    score
  end
end
