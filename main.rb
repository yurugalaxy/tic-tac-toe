# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/player'

noughts = Player.new('o')
crosses = Player.new('x')

crosses.take_turn
