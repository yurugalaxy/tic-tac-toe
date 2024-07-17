# frozen_string_literal: true

require_relative 'lib/game'
require_relative 'lib/game/board'

board = GameBoard.new
board.update_board('1', 'x')
board.update_board('5', 'x')
board.update_board('3', 'x')

oof = Game.new
# oof.play
