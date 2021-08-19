$LOAD_PATH << '.'
require "Question"


class Player
  include Question 
  attr_accessor :name, :lives
  
  def initialize(name)
    @lives = 3
    @name = name
  end
  
end






