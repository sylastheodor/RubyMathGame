class New_Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def vibe_check
    @player1.lives > 0 && @player2.lives > 0
  end

  def game
    @player1.question
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    @player2.question
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    if vibe_check
      puts "----- NEW TURN -----"
      game
    elsif @player1.lives === 0
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      puts "____ GAME OVER ____"
    elsif @player2.lives === 0
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      puts "____ GAME OVER ____"
      puts "Good bye!"
    end
  end
end