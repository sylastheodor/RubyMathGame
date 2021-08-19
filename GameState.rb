class New_Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def vibe_check
    if @player1.lives === 0
    puts "#{@player2} wins with a score of #{@player2.lives}/3"
    puts "____ GAME OVER ____"
    elsif @player2.lives === 0
    puts "#{@player1} wins with a score of #{@player1.lives}/3"
    puts "____ GAME OVER ____"
    end
  end

  def game
    vibe_check
    @player1.question
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    vibe_check
    @player2.question
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    if @player1.lives > 0 || @player2.lives > 0
      puts "----- NEW TURN -----"
      game
    else
      puts "Good bye!"
    end
  end
end