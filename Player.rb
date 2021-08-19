$LOAD_PATH << '.'
require "Question"


# module Question
#   def math_question
#     num1 = (rand(1..20))
#     num2 = (rand(1..20))
#     puts "What does #{num1} plus #{num2} equal?"
#     @answer = num1 + num2
#   end
#   def question
#     print "#{@name}:  "
#     math_question
#     input = gets.chomp.to_i
#     if input === @answer
#       puts "Correct!"
#     else
#       puts "WRONG!!!!!"
#       puts @answer
#     end
#   end
# end

class Player
  include Question 
  attr_accessor :name, :lives
  
  def initialize(name)
    @lives = 3
    @name = name
  end
  
end

buntz = Player.new('Player 1')
bintz = Player.new('Player 2')

buntz.question
bintz.question
buntz.question
bintz.question



