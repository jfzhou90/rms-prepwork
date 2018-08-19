class RPS
  def initialize
    @choices = ["rock", "paper", "scissors"]
  end

  def wins?(player_1, player_2)
    (player_1 == @choices[0] && player_2 == @choices[2]) || (player_1 == @choices[2] && player_2 == @choices[1]) || (player_1 == @choices[1] && player_2 == @choices[0])
  end

  def play
    player_choice = ""
    while !@choices.include?(player_choice)
      print "Pick rock, paper, or scissors: "
      player_choice = $stdin.gets.chomp
    end
    ai_choice = @choices[rand(0..2)]
    if wins?(player_choice, ai_choice) 
      puts "You Win!"
      puts "You picked #{player_choice}, AI picked #{ai_choice}."
    else
      puts "You picked #{player_choice}, AI picked #{ai_choice}."
      if player_choice == ai_choice
        puts "It's a tie."
      else
        puts "You lost."
      end
    end
  end
end

=begin
game = RPS.new()
game.play
=end