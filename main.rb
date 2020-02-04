require './player'
require './game'


player1 = Player.new
player2 = Player.new
players = [player1, player2]

game = Game.new
game.start_game(players)