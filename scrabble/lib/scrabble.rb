class Word
  def initialize(word)
    @score = 0
    points = {}
    %w(A E I O U L N R S T).each do |letter|
      points.store(letter, 1)
    end

    %w(D G).each do |letter|
      points.store(letter, 2)
    end

    %w(B C M P).each do |letter|
      points.store(letter, 3)
    end

    %w(F H V W Y).each do |letter|
      points.store(letter, 4)
    end

    %w(K).each do |letter|
      points.store(letter, 5)
    end

    %w(J X).each do |letter|
      points.store(letter, 8)
    end

    %w(Q Z).each do |letter|
      points.store(letter, 10)
    end

    word.upcase.chars.each do |letter|
      @score +=  points.fetch(letter)
    end
  end

  def scrabble
    @score
  end
end
