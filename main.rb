$LOAD_PATH << '.'
require "Question"
require "Player"
require "GameState"

buntz = Player.new('Player 1')
bintz = Player.new('Player 2')

monstera = New_Game.new(buntz, bintz)

monstera.game


