class Riddles
  def initialize
    @riddles = [
      [
        "What is 1+1?", "2"
      ],
      [
        "What is 2+2?", "4"
      ],
      [
        "what is 3+3?", "6"
      ]
    ]
  end

  def get(index)
    @riddles[index][0]
  end

  def correct?(riddle, answer)
    @riddles[riddle.to_i][1] == answer
  end
end