
module Question
  def math_question
    num1 = (rand(1..20))
    num2 = (rand(1..20))
    puts "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end
  
  def wrong 
    @lives -= 1
  end

  def question
    print "#{@name}:  "
    math_question
    input = gets.chomp.to_i
    if input === @answer
      puts "Correct!"
    else
      puts "WRONG!!!!!"
      wrong
      puts @lives
      puts @answer
    end
  end
end