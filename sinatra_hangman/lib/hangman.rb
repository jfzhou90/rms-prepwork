class Game
  attr_accessor :id, :word, :current_word_status, :list_of_games, :tries
  @@list_of_games = []
  @@words = ["apple", "beetle", "cat", "donkey", "elephant", "fish", "goat", "hippotamus"]

  def self.words
    @@words
  end

  def initialize(test_word = @@words[rand(0...@@words.length)])
    @id = rand(1..100000)
    @tries = 6
    @word = test_word
    @current_word_status = "_" * @word.length
    @@list_of_games.push(self)
    puts @@list_of_games
  end

  def guess(letter)
    if @word.chars.any?{|char| char.downcase == letter.downcase}
      @word.chars.each_with_index do |char,index|
        if char == letter
          @current_word_status[index] = char
        end
      end
    else
      @tries -= 1
    end
    @current_word_status
  end

  def win?
    @current_word_status == @word
  end

  def dead?
    @tries == 0
  end

  def self.find_by_id(id)
    @@list_of_games.find do |game|
      game.id == id.to_i
    end
  end

end
